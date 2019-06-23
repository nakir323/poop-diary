import 'package:flutter/material.dart';

class FortuneAll extends StatefulWidget {
  FortuneAll({Key key}) : super(key: key);

  @override
  _FortuneAllState createState() => _FortuneAllState();
}

class _FortuneAllState extends State<FortuneAll> {

  bool _activeFortuneAllOne = false;
  bool _activeFortuneAllTwo = false;
  bool _activeFortuneAllThree = false;
  bool _activeFortuneAllFour = false;
  bool _activeFortuneAllFive = false;

  void _handleFortuneAllOneTap() {
    setState((){
      _activeFortuneAllOne = true;
      _activeFortuneAllTwo = false;
      _activeFortuneAllThree = false;
      _activeFortuneAllFour = false;
      _activeFortuneAllFive = false;
    });
    }

  void _handleFortuneAllTwoTap() {
    setState((){
      _activeFortuneAllOne = true;
      _activeFortuneAllTwo = true;
      _activeFortuneAllThree = false;
      _activeFortuneAllFour = false;
      _activeFortuneAllFive = false;
    });
    }

  void _handleFortuneAllThreeTap() {
    setState((){
      _activeFortuneAllOne = true;
      _activeFortuneAllTwo = true;
      _activeFortuneAllThree = true;
      _activeFortuneAllFour = false;
      _activeFortuneAllFive = false;
    });
    }

  void _handleFortuneAllFourTap() {
    setState((){
      _activeFortuneAllOne = true;
      _activeFortuneAllTwo = true;
      _activeFortuneAllThree = true;
      _activeFortuneAllFour = true;
      _activeFortuneAllFive = false;
    });
    }

  void _handleFortuneAllFiveTap() {
    setState((){
      _activeFortuneAllOne = true;
      _activeFortuneAllTwo = true;
      _activeFortuneAllThree = true;
      _activeFortuneAllFour = true;
      _activeFortuneAllFive = true;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildFortuneAllOne(context),
        buildFortuneAllTwo(context),
        buildFortuneAllThree(context),
        buildFortuneAllFour(context),
        buildFortuneAllFive(context)
       ] 
    );
  }

  Widget buildFortuneAllOne(BuildContext context) {
  String fortuneAllOneOff = 'images/icon-fortune-off.png';
  String fortuneAllOneOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: this._handleFortuneAllOneTap,
     child: Image.asset(
       _activeFortuneAllOne ? fortuneAllOneOn : fortuneAllOneOff,
       width:60, height:60
     )
  );
 }

 Widget buildFortuneAllTwo(BuildContext context) {
  String fortuneAllTwoOff = 'images/icon-fortune-off.png';
  String fortuneAllTwoOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneAllTwoTap,
     child: Image.asset(
       _activeFortuneAllTwo ? fortuneAllTwoOn : fortuneAllTwoOff,
       width:60, height:60
     )
  );
 }

 Widget buildFortuneAllThree(BuildContext context) {
  String fortuneAllThreeOff = 'images/icon-fortune-off.png';
  String fortuneAllThreeOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneAllThreeTap,
     child: Image.asset(
       _activeFortuneAllThree ? fortuneAllThreeOn : fortuneAllThreeOff,
       width:60, height:60
     )
  );
 }

 Widget buildFortuneAllFour(BuildContext context) {
  String fortuneAllFourOff = 'images/icon-fortune-off.png';
  String fortuneAllFourOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneAllFourTap,
     child: Image.asset(
       _activeFortuneAllFour ? fortuneAllFourOn : fortuneAllFourOff,
       width:60, height:60
     )
  );
 }

 Widget buildFortuneAllFive(BuildContext context) {
  String fortuneAllFiveOff = 'images/icon-fortune-off.png';
  String fortuneAllFiveOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneAllFiveTap,
     child: Image.asset(
       _activeFortuneAllFive ? fortuneAllFiveOn : fortuneAllFiveOff,
       width:60, height:60
     )
  );
 }

}