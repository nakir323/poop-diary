import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'diary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poop Diary',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Poop Diary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: _buildCalender(context),
    );
  }
}

Widget _buildCalender(BuildContext context) {
  DateTime now = new DateTime.now();
  DateTime endOfMonth = new DateTime(now.year, now.month + 1, 0);

  return ListView.builder(
    padding: const EdgeInsets.all(0),
    itemBuilder: (BuildContext _context, int i) {
      if (i.isOdd) {
        return Divider();
      }
      final int index = i ~/ 2 + 1;
      return _buildRow(context, index, now);
    },
    itemCount: int.parse(endOfMonth.day.toString()) * 2,
  );
}

Widget _buildRow(BuildContext context, int index, DateTime now) {
  String nowStr =
      now.year.toString() + "/" + now.month.toString() + "/" + index.toString();

  Future<int> _getOneDayPoop() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String tempStr = prefs.getString(nowStr + "poopType");
    if (tempStr != null) {
      return int.parse(tempStr);
    }
  }

  Future<int> _getOneDayFortune() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String tempStr = prefs.getString(nowStr + "fortuneAll");
    if (tempStr != null) {
      return int.parse(tempStr);
    }
  }

  Future<String> _getOneDayDiary() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String tempStr = prefs.getString(nowStr + "diary");
    if (tempStr != null) {
      return tempStr;
    }
  }

  return GestureDetector(
    onLongPress: _getOneDayPoop,
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DiaryPage(now: now, index: index)),
      );
    },
    child: new Container(
        padding: const EdgeInsets.all(20),
        child: Row(children: [
          Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(now.year.toString() + "/" + now.month.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(index.toString(),
                    style: TextStyle(fontSize: 28, color: Colors.black38)),
              ]),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                FutureBuilder(
                    future: _getOneDayDiary(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                          maxLines: 20,
                        );
                      } else {
                        return Text(
                          'うんこ日記を書いてください。',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        );
                      }
                    }),
                Container(

                padding: const EdgeInsets.only(left: 58, top: 20),
                child: FutureBuilder(
                    future: _getOneDayFortune(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        var fortune = snapshot.data;
                        String fortuneOff = 'images/icon-fortune-off.png';
                        String fortuneOn = 'images/icon-fortune-on.png';
                        if (fortune == 1) {
                          return Row(
                            children: [
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                          ]);
                        } else if (fortune == 2) {
                          return Row(children: [
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                          ]);
                        } else if (fortune == 3) {
                          return Row(children: [
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                          ]);
                        } else if (fortune == 4) {
                          return Row(children: [
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOff, width: 30, height: 30),
                          ]);
                        } else if (fortune == 5) {
                          return Row(children: [
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                            Image.asset(fortuneOn, width: 30, height: 30),
                          ]);
                        } else {
                          return Text('この日の運勢を入力してください。',
                              style: TextStyle(color: Colors.grey));
                        }
                      } else {
                        return Text('この日の運勢を入力してください。',
                            style: TextStyle(color: Colors.grey));
                      }
                    }))
              ])),
          FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  String fortuneOff = 'images/icon-fortune-off.png';
                  if (poopType == 0) {
                    return Image.asset('images/icon-korokoro-on.png',
                        width: 60, height: 60);
                  } else if (poopType == 1) {
                    return Image.asset('images/icon-benpi-on.png',
                        width: 60, height: 60);
                  } else if (poopType == 2) {
                    return Image.asset('images/icon-great-on.png',
                        width: 60, height: 60);
                  } else if (poopType == 3) {
                    return Image.asset('images/icon-chorochoro-on.png',
                        width: 60, height: 60);
                  } else if (poopType == 4) {
                    return Image.asset('images/icon-bityabitya-on.png',
                        width: 60, height: 60);
                  } else if (poopType == 5) {
                    return Image.asset('images/icon-nopoop-on.png',
                        width: 60, height: 60);
                  } else {
                    return Image.asset(fortuneOff, width: 60, height: 60);
                  }
                } else {
                  String fortuneOff = 'images/icon-fortune-off.png';
                  return Image.asset(fortuneOff, width: 60, height: 60);
                }
              }),
        ])),
  );
}
