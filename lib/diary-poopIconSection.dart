import 'package:flutter/material.dart';

// Control all poop together
class Allpoop extends StatefulWidget {
  Allpoop({Key key}) : super(key: key);

  @override
  _AllpoopState createState() => _AllpoopState();
}

class _AllpoopState extends State<Allpoop> {

  bool _activeKorokoro = false;
  bool _activeBenpi = false;
  bool _activeGreat = false;
  bool _activeChorochoro = false;
  bool _activeBityabitya = false;
  bool _activeNopoop = false;

  void _handleKorokoroTap() {
    setState((){
      _activeKorokoro = !_activeKorokoro;
      if(_activeKorokoro) {
        _activeBenpi = false;
        _activeGreat = false;
        _activeChorochoro = false;
        _activeBityabitya = false;
        _activeNopoop = false;
    } 
    });
    }

  void _handleBenpiTap() {
    setState((){
      _activeBenpi = !_activeBenpi;
      if (_activeBenpi) {
        _activeKorokoro = false;
        _activeGreat = false;
        _activeChorochoro = false;
        _activeBityabitya = false;
        _activeNopoop = false;
    }
    });
    }

  void _handleGreatTap() {
    setState((){
      _activeGreat = !_activeGreat;
     if (_activeGreat) {
        _activeKorokoro = false;
        _activeBenpi = false;
        _activeChorochoro = false;
        _activeBityabitya = false;
        _activeNopoop = false;
    }
    });
    }

  void _handleChorochoroTap() {
    setState((){
      _activeChorochoro = !_activeChorochoro;
     if (_activeChorochoro) {
        _activeKorokoro = false;
        _activeBenpi = false;
        _activeGreat = false;
        _activeBityabitya = false;
        _activeNopoop = false;
    }
    });
    }

  void _handleBityabityaTap() {
    setState((){
      _activeBityabitya = !_activeBityabitya;
     if (_activeBityabitya) {
        _activeKorokoro = false;
        _activeBenpi = false;
        _activeGreat = false;
        _activeChorochoro = false;
        _activeNopoop = false;
    }
    });
    }

  void _handleNopoopTap() {
    setState((){
      _activeNopoop = !_activeNopoop;
     if (_activeNopoop) {
        _activeKorokoro = false;
        _activeBenpi = false;
        _activeGreat = false;
        _activeChorochoro = false;
        _activeBityabitya = false;
    }
    });
    }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildKorokoro(context),
        buildBenpi(context),
        buildGreat(context),
        buildChorochoro(context),
        buildBityabitya(context),
        buildNopoop(context) 
       ] 
    );
  }

  Widget buildKorokoro(BuildContext context) {
  String korokoroOff = 'images/icon-korokoro-off.png';
  String korokoroOn = 'images/icon-korokoro-on.png';

  return GestureDetector(
    onTap: this._handleKorokoroTap,
     child: Image.asset(
       _activeKorokoro ? korokoroOn : korokoroOff,
       width:60, height:60
     )
  );
 }

 Widget buildBenpi(BuildContext context) {
  String benpiOff = 'images/icon-benpi-off.png';
  String benpiOn = 'images/icon-benpi-on.png';

  return GestureDetector(
    onTap: _handleBenpiTap,
     child: Image.asset(
       _activeBenpi ? benpiOn : benpiOff,
       width:60, height:60
     )
  );
 }

 Widget buildGreat(BuildContext context) {
  String greatOff = 'images/icon-great-off.png';
  String greatOn = 'images/icon-great-on.png';

  return GestureDetector(
    onTap: _handleGreatTap,
     child: Image.asset(
       _activeGreat ? greatOn : greatOff,
       width:60, height:60
     )
  );
 }

 Widget buildChorochoro(BuildContext context) {
  String chorochoroOff = 'images/icon-chorochoro-off.png';
  String chorochoroOn = 'images/icon-chorochoro-on.png';

  return GestureDetector(
    onTap: _handleChorochoroTap,
     child: Image.asset(
       _activeChorochoro ? chorochoroOn : chorochoroOff,
       width:60, height:60
     )
  );
 }

 Widget buildBityabitya(BuildContext context) {
  String bityabityaOff = 'images/icon-bityabitya-off.png';
  String bityabityaOn = 'images/icon-bityabitya-on.png';

  return GestureDetector(
    onTap: _handleBityabityaTap,
     child: Image.asset(
       _activeBityabitya ? bityabityaOn : bityabityaOff,
       width:60, height:60
     )
  );
 }

 Widget buildNopoop(BuildContext context) {
  String nopoopOff = 'images/icon-nopoop-off.png';
  String nopoopOn = 'images/icon-nopoop-on.png';

  return GestureDetector(
    onTap: _handleNopoopTap,
     child: Image.asset(
       _activeNopoop ? nopoopOn : nopoopOff,
       width:60, height:60
     )
  );
 }
}








