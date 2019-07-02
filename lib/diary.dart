import 'package:flutter/material.dart';
import 'diary-poopIconSection.dart';
import 'diary-fortuneContentSection-all.dart';
import 'diary-fortuneContentSection-work.dart';
import 'diary-fortuneContentSection-love.dart';
import 'diary-fortuneContentSection-money.dart';
import 'diary-fortuneContentSection-health.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DiaryPage extends StatefulWidget {
  final DateTime now;
  final int index;

  DiaryPage({Key key, @required this.now, @required this.index})
      : super(key: key);

  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.now.year.toString() +
            "/" +
            widget.now.month.toString() +
            "/" +
            widget.index.toString()),
      ),
      body: Column(
        children: [
          poopTitleSection,
          poopIconSection(context, widget.now, widget.index),
          fortuneTitleSection,
          fortuneContentSection(context, widget.now, widget.index),
          diaryTitleSection,
          diaryContentSection(context, widget.now, widget.index)
        ],
      ),
    );
  }

  Widget poopTitleSection = Container(
    padding: const EdgeInsets.only(top: 32, left: 16),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text("今日のうんこ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
              fontSize: 20)),
    ]),
  );

  Widget poopIconSection(BuildContext context, DateTime now, int index) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Allpoop(context: context, now: now, index: index),
      ]),
    );
  }

  Widget fortuneTitleSection = Container(
    padding: const EdgeInsets.only(top: 32, left: 16),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text("今日の運",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
              fontSize: 20)),
    ]),
  );

  Widget fortuneContentSection(BuildContext context, DateTime now, int index) {
    return Container(
        padding: const EdgeInsets.only(top: 16),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("総合運",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    fontSize: 16)),
            FortuneAll(context: context, now: now, index: index)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("仕事",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    fontSize: 16)),
            FortuneWork(context: context, now: now, index: index)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("恋愛",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    fontSize: 16)),
            FortuneLove(context: context, now: now, index: index)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("お金",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    fontSize: 16)),
            FortuneMoney(context: context, now: now, index: index)
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("健康",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    fontSize: 16)),
            FortuneHealth(context: context, now: now, index: index),
          ])
        ]));
  }

  Widget diaryTitleSection = Container(
    padding: const EdgeInsets.only(top: 32, left: 16),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text("今日のうんこ日記",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
              fontSize: 20)),
    ]),
  );

  Widget diaryContentSection(BuildContext context, DateTime now, int index) {
    String nowStr = now.year.toString() +
        "/" +
        now.month.toString() +
        "/" +
        index.toString();
    TextEditingController _controller;

    Future<String> _getDiary() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "diary");
      if (tempStr != null) {
      return tempStr;
      }
    }

    void _saveDiary(String value) async {
      var tempStr = value;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "diary", tempStr);
    }

    return Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: FutureBuilder(
            future: _getDiary(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              _controller = new TextEditingController(text: snapshot.data);
              return TextField(
                keyboardType: TextInputType.multiline,
                onChanged: _saveDiary,
                controller: _controller,
                maxLines: null,
              );
            }));
  }
}
