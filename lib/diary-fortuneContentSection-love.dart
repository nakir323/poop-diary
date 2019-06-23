import 'package:flutter/material.dart';

class FortuneLove extends StatefulWidget {
  FortuneLove({Key key}) : super(key: key);

  @override
  _FortuneLoveState createState() => _FortuneLoveState();
}

class _FortuneLoveState extends State<FortuneLove> {

  bool _activeFortuneLoveOne = false;
  bool _activeFortuneLoveTwo = false;
  bool _activeFortuneLoveThree = false;
  bool _activeFortuneLoveFour = false;
  bool _activeFortuneLoveFive = false;

  void _handleFortuneLoveOneTap() {
    setState((){
      _activeFortuneLoveOne = true;
      _activeFortuneLoveTwo = false;
      _activeFortuneLoveThree = false;
      _activeFortuneLoveFour = false;
      _activeFortuneLoveFive = false;
    });
    }

  void _handleFortuneLoveTwoTap() {
    setState((){
      _activeFortuneLoveOne = true;
      _activeFortuneLoveTwo = true;
      _activeFortuneLoveThree = false;
      _activeFortuneLoveFour = false;
      _activeFortuneLoveFive = false;
    });
    }

  void _handleFortuneLoveThreeTap() {
    setState((){
      _activeFortuneLoveOne = true;
      _activeFortuneLoveTwo = true;
      _activeFortuneLoveThree = true;
      _activeFortuneLoveFour = false;
      _activeFortuneLoveFive = false;
    });
    }

  void _handleFortuneLoveFourTap() {
    setState((){
      _activeFortuneLoveOne = true;
      _activeFortuneLoveTwo = true;
      _activeFortuneLoveThree = true;
      _activeFortuneLoveFour = true;
      _activeFortuneLoveFive = false;
    });
    }

  void _handleFortuneLoveFiveTap() {
    setState((){
      _activeFortuneLoveOne = true;
      _activeFortuneLoveTwo = true;
      _activeFortuneLoveThree = true;
      _activeFortuneLoveFour = true;
      _activeFortuneLoveFive = true;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildFortuneLoveOne(context),
        buildFortuneLoveTwo(context),
        buildFortuneLoveThree(context),
        buildFortuneLoveFour(context),
        buildFortuneLoveFive(context)
       ] 
    );
  }

  Widget buildFortuneLoveOne(BuildContext context) {
  String fortuneLoveOneOff = 'images/icon-fortune-off.png';
  String fortuneLoveOneOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: this._handleFortuneLoveOneTap,
     child: Image.asset(
       _activeFortuneLoveOne ? fortuneLoveOneOn : fortuneLoveOneOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneLoveTwo(BuildContext context) {
  String fortuneLoveTwoOff = 'images/icon-fortune-off.png';
  String fortuneLoveTwoOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneLoveTwoTap,
     child: Image.asset(
       _activeFortuneLoveTwo ? fortuneLoveTwoOn : fortuneLoveTwoOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneLoveThree(BuildContext context) {
  String fortuneLoveThreeOff = 'images/icon-fortune-off.png';
  String fortuneLoveThreeOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneLoveThreeTap,
     child: Image.asset(
       _activeFortuneLoveThree ? fortuneLoveThreeOn : fortuneLoveThreeOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneLoveFour(BuildContext context) {
  String fortuneLoveFourOff = 'images/icon-fortune-off.png';
  String fortuneLoveFourOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneLoveFourTap,
     child: Image.asset(
       _activeFortuneLoveFour ? fortuneLoveFourOn : fortuneLoveFourOff,
       width:50, height:50
     )
  );
 }

 Widget buildFortuneLoveFive(BuildContext context) {
  String fortuneLoveFiveOff = 'images/icon-fortune-off.png';
  String fortuneLoveFiveOn = 'images/icon-fortune-on.png';

  return GestureDetector(
    onTap: _handleFortuneLoveFiveTap,
     child: Image.asset(
       _activeFortuneLoveFive ? fortuneLoveFiveOn : fortuneLoveFiveOff,
       width:50, height:50
     )
  );
 }

}