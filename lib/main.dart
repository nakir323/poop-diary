import 'package:flutter/material.dart';
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
    padding: const EdgeInsets.all(16),
    itemBuilder: (BuildContext _context, int i) {
      if (i.isOdd) {
        return Divider();
      }
      final int index = i ~/ 2 + 1;
      return _buildRow(context, index, now);
    },
    itemCount: int.parse(endOfMonth.day.toString()) * 2 ,
  );
}

Widget _buildRow(BuildContext context, int index, DateTime now) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DiaryPage(now: now, index: index)),
      );
    },
    child: new Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(now.year.toString()+"/"+now.month.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(
                  index.toString(),
                  style: TextStyle(fontSize: 28, color: Colors.black38)),
              ]),
          Expanded(
            child: Center(
              child: Text(
                'No Diary',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
