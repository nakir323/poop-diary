import 'package:flutter/material.dart';
import 'diary-poopIconSection.dart';
import 'diary-fortuneContentSection-all.dart';
import 'diary-fortuneContentSection-work.dart';
import 'diary-fortuneContentSection-love.dart';
import 'diary-fortuneContentSection-money.dart';
import 'diary-fortuneContentSection-health.dart';

class DiaryPage extends StatelessWidget {
  final DateTime now;
  final int index;

  DiaryPage({Key key, @required this.now, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(now.year.toString()+"/"+now.month.toString()+"/"+index.toString()),
      ),
      body: Column(
        children: [
            poopTitleSection,
            poopIconSection,
            fortuneTitleSection,
            fortuneContentSection,
            diaryTitleSection,
            diaryContentSection
        ],
        ),
      );
  }
}

Widget poopTitleSection = Container(
  padding: const EdgeInsets.only(top:32, left:16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [Text("今日のうんこ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 20)),]
  ),
 );

Widget poopIconSection = Container(
  padding: const EdgeInsets.only(top:16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:  [
      Allpoop(),
    ]
  ),
);

Widget fortuneTitleSection = Container(
  padding: const EdgeInsets.only(top:32, left:16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [Text("今日の運", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 20)),]
  ),
 );

 Widget fortuneContentSection = Container(
   padding: const EdgeInsets.only(top:16),
   child: Column(
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("総合運", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 16)),
           FortuneAll()
         ]
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("仕事", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 16)),
           FortuneWork()
         ]
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("恋愛", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 16)),
           FortuneLove()
         ]
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("お金", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 16)),
           FortuneMoney()
         ]
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("健康", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 16)),
           FortuneHealth()
         ]
       ),
     ]
   )
 );

 Widget diaryTitleSection = Container(
  padding: const EdgeInsets.only(top:32, left:16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [Text("今日のうんこ日記", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38, fontSize: 20)),]
  ),
 );

Widget diaryContentSection = Container(
  padding: const EdgeInsets.only(left:16, right:16),
  child: TextField(
    keyboardType: TextInputType.multiline,
    maxLines: null,
  ),
);