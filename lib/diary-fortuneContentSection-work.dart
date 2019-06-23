import 'package:flutter/material.dart';

class FortuneWork extends StatefulWidget {
  FortuneWork({Key key}) : super(key: key);

  @override
  _FortuneWorkState createState() => _FortuneWorkState();
}

class _FortuneWorkState extends State<FortuneWork> {

  bool _activeFortuneWorkOne = false;
  bool _activeFortuneWorkTwo = false;
  bool _activeFortuneWorkThree = false;
  bool _activeFortuneWorkFour = false;
  bool _activeFortuneWorkFive = false;

  void _handleFortuneWorkOneTap() {
    setState((){
      _activeFortuneWorkOne = true;
      _activeFortuneWorkTwo = false;
      _activeFortuneWorkThree = false;
      _activeFortuneWorkFour = false;
      _activeFortuneWorkFive = false;
    });
    }

  void _handleFortuneWorkTwoTap() {
    setState((){
      _activeFortuneWorkOne = true;
      _activeFortuneWorkTwo = true;
      _activeFortuneWorkThree = false;
      _activeFortuneWorkFour = false;
      _activeFortuneWorkFive = false;
    });
    }

  void _handleFortuneWorkThreeTap() {
    setState((){
      _activeFortuneWorkOne = true;
      _activeFortuneWorkTwo = true;
      _activeFortuneWorkThree = true;
      _activeFortuneWorkFour = false;
      _activeFortuneWorkFive = false;
    });
    }

  void _handleFortuneWorkFourTap() {
    setState((){
      _activeFortuneWorkOne = true;
      _activeFortuneWorkTwo = true;
      _activeFortuneWorkThree = true;
      _activeFortuneWorkFour = true;
      _activeFortuneWorkFive = false;
    });
    }

  void _handleFortuneWorkFiveTap() {
    setState((){
      _activeFortuneWorkOne = true;
      _activeFortuneWorkTwo = true;
      _activeFortuneWorkThree = true;
      _activeFortuneWorkFour = true;
      _activeFortuneWorkFive = true;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildFortuneWorkOne(context),
        buildFortuneWorkTwo(context),
        buildFortuneWorkThree(context),
        buildFortuneWorkFour(context),
        buildFortuneWorkFive(context)
       ] 
    );
  }

  Widget buildFortuneWorkOne(BuildContext context) {
  String fortuneWorkOneOff = 'images/icon-fortune-off.png';
  String fortuneWorkOneOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: this._handleFortuneWorkOneTap,
     child: Image.asset(
       _activeFortuneWorkOne ? fortuneWorkOneOn : fortuneWorkOneOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneWorkTwo(BuildContext context) {
  String fortuneWorkTwoOff = 'images/icon-fortune-off.png';
  String fortuneWorkTwoOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneWorkTwoTap,
     child: Image.asset(
       _activeFortuneWorkTwo ? fortuneWorkTwoOn : fortuneWorkTwoOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneWorkThree(BuildContext context) {
  String fortuneWorkThreeOff = 'images/icon-fortune-off.png';
  String fortuneWorkThreeOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneWorkThreeTap,
     child: Image.asset(
       _activeFortuneWorkThree ? fortuneWorkThreeOn : fortuneWorkThreeOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneWorkFour(BuildContext context) {
  String fortuneWorkFourOff = 'images/icon-fortune-off.png';
  String fortuneWorkFourOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneWorkFourTap,
     child: Image.asset(
       _activeFortuneWorkFour ? fortuneWorkFourOn : fortuneWorkFourOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneWorkFive(BuildContext context) {
  String fortuneWorkFiveOff = 'images/icon-fortune-off.png';
  String fortuneWorkFiveOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneWorkFiveTap,
     child: Image.asset(
       _activeFortuneWorkFive ? fortuneWorkFiveOn : fortuneWorkFiveOff,
       width:50, height:50
     )
  );
 }

}