import 'package:flutter/material.dart';

class FortuneHealth extends StatefulWidget {
  FortuneHealth({Key key}) : super(key: key);

  @override
  _FortuneHealthState createState() => _FortuneHealthState();
}

class _FortuneHealthState extends State<FortuneHealth> {

  bool _activeFortuneHealthOne = false;
  bool _activeFortuneHealthTwo = false;
  bool _activeFortuneHealthThree = false;
  bool _activeFortuneHealthFour = false;
  bool _activeFortuneHealthFive = false;

  void _handleFortuneHealthOneTap() {
    setState((){
      _activeFortuneHealthOne = true;
      _activeFortuneHealthTwo = false;
      _activeFortuneHealthThree = false;
      _activeFortuneHealthFour = false;
      _activeFortuneHealthFive = false;
    });
    }

  void _handleFortuneHealthTwoTap() {
    setState((){
      _activeFortuneHealthOne = true;
      _activeFortuneHealthTwo = true;
      _activeFortuneHealthThree = false;
      _activeFortuneHealthFour = false;
      _activeFortuneHealthFive = false;
    });
    }

  void _handleFortuneHealthThreeTap() {
    setState((){
      _activeFortuneHealthOne = true;
      _activeFortuneHealthTwo = true;
      _activeFortuneHealthThree = true;
      _activeFortuneHealthFour = false;
      _activeFortuneHealthFive = false;
    });
    }

  void _handleFortuneHealthFourTap() {
    setState((){
      _activeFortuneHealthOne = true;
      _activeFortuneHealthTwo = true;
      _activeFortuneHealthThree = true;
      _activeFortuneHealthFour = true;
      _activeFortuneHealthFive = false;
    });
    }

  void _handleFortuneHealthFiveTap() {
    setState((){
      _activeFortuneHealthOne = true;
      _activeFortuneHealthTwo = true;
      _activeFortuneHealthThree = true;
      _activeFortuneHealthFour = true;
      _activeFortuneHealthFive = true;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildFortuneHealthOne(context),
        buildFortuneHealthTwo(context),
        buildFortuneHealthThree(context),
        buildFortuneHealthFour(context),
        buildFortuneHealthFive(context)
       ] 
    );
  }

  Widget buildFortuneHealthOne(BuildContext context) {
  String fortuneHealthOneOff = 'images/icon-fortune-off.png';
  String fortuneHealthOneOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: this._handleFortuneHealthOneTap,
     child: Image.asset(
       _activeFortuneHealthOne ? fortuneHealthOneOn : fortuneHealthOneOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneHealthTwo(BuildContext context) {
  String fortuneHealthTwoOff = 'images/icon-fortune-off.png';
  String fortuneHealthTwoOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneHealthTwoTap,
     child: Image.asset(
       _activeFortuneHealthTwo ? fortuneHealthTwoOn : fortuneHealthTwoOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneHealthThree(BuildContext context) {
  String fortuneHealthThreeOff = 'images/icon-fortune-off.png';
  String fortuneHealthThreeOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneHealthThreeTap,
     child: Image.asset(
       _activeFortuneHealthThree ? fortuneHealthThreeOn : fortuneHealthThreeOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneHealthFour(BuildContext context) {
  String fortuneHealthFourOff = 'images/icon-fortune-off.png';
  String fortuneHealthFourOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneHealthFourTap,
     child: Image.asset(
       _activeFortuneHealthFour ? fortuneHealthFourOn : fortuneHealthFourOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneHealthFive(BuildContext context) {
  String fortuneHealthFiveOff = 'images/icon-fortune-off.png';
  String fortuneHealthFiveOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneHealthFiveTap,
     child: Image.asset(
       _activeFortuneHealthFive ? fortuneHealthFiveOn : fortuneHealthFiveOff,
       width:50, height:50
     )
  );
 }

}