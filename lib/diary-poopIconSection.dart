import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Control all poop together
class Allpoop extends StatefulWidget {
  final DateTime now;
  final int index;
  Allpoop(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "poopType");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleKorokoroTap() async {
      var tempInt = 0;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
        _activeKorokoro = !_activeKorokoro;
        if (_activeKorokoro) {
          _activeBenpi = false;
          _activeGreat = false;
          _activeChorochoro = false;
          _activeBityabitya = false;
          _activeNopoop = false;
        }
      });
    }

    Widget buildKorokoro(BuildContext context) {
      String korokoroOff = 'images/icon-korokoro-off.png';
      String korokoroOn = 'images/icon-korokoro-on.png';

      return GestureDetector(
          onTap: _handleKorokoroTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 0) {
                    _activeKorokoro = true;
                  } else {
                    _activeKorokoro = false;
                  }
                } else {
                  _activeKorokoro = false;
                }
                return Image.asset(_activeKorokoro ? korokoroOn : korokoroOff,
                    width: 60, height: 60);
              }));
    }

    void _handleBenpiTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
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

    Widget buildBenpi(BuildContext context) {
      String benpiOff = 'images/icon-benpi-off.png';
      String benpiOn = 'images/icon-benpi-on.png';

      return GestureDetector(
          onTap: _handleBenpiTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 1) {
                    _activeBenpi = true;
                  } else {
                    _activeBenpi = false;
                  }
                } else {
                  _activeBenpi = false;
                }
                return Image.asset(_activeBenpi ? benpiOn : benpiOff,
                    width: 60, height: 60);
              }));
    }

    void _handleGreatTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
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

    Widget buildGreat(BuildContext context) {
      String greatOff = 'images/icon-great-off.png';
      String greatOn = 'images/icon-great-on.png';

      return GestureDetector(
          onTap: _handleGreatTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 2) {
                    _activeGreat = true;
                  } else {
                    _activeGreat = false;
                  }
                } else {
                  _activeGreat = false;
                }
                return Image.asset(_activeGreat ? greatOn : greatOff,
                    width: 60, height: 60);
              }));
    }

    void _handleChorochoroTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
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

    Widget buildChorochoro(BuildContext context) {
      String chorochoroOff = 'images/icon-chorochoro-off.png';
      String chorochoroOn = 'images/icon-chorochoro-on.png';

      return GestureDetector(
          onTap: _handleChorochoroTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 3) {
                    _activeChorochoro = true;
                  } else {
                    _activeChorochoro = false;
                  }
                } else {
                  _activeChorochoro = false;
                }
                return Image.asset(
                    _activeChorochoro ? chorochoroOn : chorochoroOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleBityabityaTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
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

    Widget buildBityabitya(BuildContext context) {
      String bityabityaOff = 'images/icon-bityabitya-off.png';
      String bityabityaOn = 'images/icon-bityabitya-on.png';

      return GestureDetector(
          onTap: _handleBityabityaTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 4) {
                    _activeBityabitya = true;
                  } else {
                    _activeBityabitya = false;
                  }
                } else {
                  _activeBityabitya = false;
                }
                return Image.asset(
                    _activeBityabitya ? bityabityaOn : bityabityaOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleNopoopTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "poopType", tempInt.toString());
      setState(() {
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
    Widget buildNopoop(BuildContext context) {
      String nopoopOff = 'images/icon-nopoop-off.png';
      String nopoopOn = 'images/icon-nopoop-on.png';

      return GestureDetector(
          onTap: _handleNopoopTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var poopType = snapshot.data;
                  if (poopType == 5) {
                    _activeNopoop = true;
                  } else {
                    _activeNopoop = false;
                  }
                } else {
                  _activeNopoop = false;
                }
                return Image.asset(_activeNopoop ? nopoopOn : nopoopOff,
                    width: 60, height: 60);
              }));
    }

    return Row(children: <Widget>[
      buildKorokoro(context),
      buildBenpi(context),
      buildGreat(context),
      buildChorochoro(context),
      buildBityabitya(context),
      buildNopoop(context)
    ]);
  }
}
