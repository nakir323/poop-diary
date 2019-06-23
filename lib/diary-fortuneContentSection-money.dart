import 'package:flutter/material.dart';

class FortuneMoney extends StatefulWidget {
  FortuneMoney({Key key}) : super(key: key);

  @override
  _FortuneMoneyState createState() => _FortuneMoneyState();
}

class _FortuneMoneyState extends State<FortuneMoney> {

  bool _activeFortuneMoneyOne = false;
  bool _activeFortuneMoneyTwo = false;
  bool _activeFortuneMoneyThree = false;
  bool _activeFortuneMoneyFour = false;
  bool _activeFortuneMoneyFive = false;

  void _handleFortuneMoneyOneTap() {
    setState((){
      _activeFortuneMoneyOne = true;
      _activeFortuneMoneyTwo = false;
      _activeFortuneMoneyThree = false;
      _activeFortuneMoneyFour = false;
      _activeFortuneMoneyFive = false;
    });
    }

  void _handleFortuneMoneyTwoTap() {
    setState((){
      _activeFortuneMoneyOne = true;
      _activeFortuneMoneyTwo = true;
      _activeFortuneMoneyThree = false;
      _activeFortuneMoneyFour = false;
      _activeFortuneMoneyFive = false;
    });
    }

  void _handleFortuneMoneyThreeTap() {
    setState((){
      _activeFortuneMoneyOne = true;
      _activeFortuneMoneyTwo = true;
      _activeFortuneMoneyThree = true;
      _activeFortuneMoneyFour = false;
      _activeFortuneMoneyFive = false;
    });
    }

  void _handleFortuneMoneyFourTap() {
    setState((){
      _activeFortuneMoneyOne = true;
      _activeFortuneMoneyTwo = true;
      _activeFortuneMoneyThree = true;
      _activeFortuneMoneyFour = true;
      _activeFortuneMoneyFive = false;
    });
    }

  void _handleFortuneMoneyFiveTap() {
    setState((){
      _activeFortuneMoneyOne = true;
      _activeFortuneMoneyTwo = true;
      _activeFortuneMoneyThree = true;
      _activeFortuneMoneyFour = true;
      _activeFortuneMoneyFive = true;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildFortuneMoneyOne(context),
        buildFortuneMoneyTwo(context),
        buildFortuneMoneyThree(context),
        buildFortuneMoneyFour(context),
        buildFortuneMoneyFive(context)
       ] 
    );
  }

  Widget buildFortuneMoneyOne(BuildContext context) {
  String fortuneMoneyOneOff = 'images/icon-fortune-off.png';
  String fortuneMoneyOneOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: this._handleFortuneMoneyOneTap,
     child: Image.asset(
       _activeFortuneMoneyOne ? fortuneMoneyOneOn : fortuneMoneyOneOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneMoneyTwo(BuildContext context) {
  String fortuneMoneyTwoOff = 'images/icon-fortune-off.png';
  String fortuneMoneyTwoOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneMoneyTwoTap,
     child: Image.asset(
       _activeFortuneMoneyTwo ? fortuneMoneyTwoOn : fortuneMoneyTwoOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneMoneyThree(BuildContext context) {
  String fortuneMoneyThreeOff = 'images/icon-fortune-off.png';
  String fortuneMoneyThreeOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneMoneyThreeTap,
     child: Image.asset(
       _activeFortuneMoneyThree ? fortuneMoneyThreeOn : fortuneMoneyThreeOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneMoneyFour(BuildContext context) {
  String fortuneMoneyFourOff = 'images/icon-fortune-off.png';
  String fortuneMoneyFourOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneMoneyFourTap,
     child: Image.asset(
       _activeFortuneMoneyFour ? fortuneMoneyFourOn : fortuneMoneyFourOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneMoneyFive(BuildContext context) {
  String fortuneMoneyFiveOff = 'images/icon-fortune-off.png';
  String fortuneMoneyFiveOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneMoneyFiveTap,
     child: Image.asset(
       _activeFortuneMoneyFive ? fortuneMoneyFiveOn : fortuneMoneyFiveOff,
       width:50, height:50
     )
  );
 }

}