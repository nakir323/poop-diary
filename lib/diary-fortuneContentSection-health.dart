import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FortuneHealth extends StatefulWidget {
  final DateTime now;
  final int index;
  FortuneHealth(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

  @override
  _FortuneHealthState createState() => _FortuneHealthState();
}

class _FortuneHealthState extends State<FortuneHealth> {
  bool _activeFortuneHealthOne = false;
  bool _activeFortuneHealthTwo = false;
  bool _activeFortuneHealthThree = false;
  bool _activeFortuneHealthFour = false;
  bool _activeFortuneHealthFive = false;

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "fortuneHealth");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleFortuneHealthOneTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneHealth", tempInt.toString());
      setState(() {
        _activeFortuneHealthOne = true;
        _activeFortuneHealthTwo = false;
        _activeFortuneHealthThree = false;
        _activeFortuneHealthFour = false;
        _activeFortuneHealthFive = false;
      });
    }

    Widget buildFortuneHealthOne(BuildContext context) {
      String fortuneHealthOneOff = 'images/icon-fortune-off.png';
      String fortuneHealthOneOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneHealthOneTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneHealth = snapshot.data;
                  if (fortuneHealth == 1 ||
                      fortuneHealth == 2 ||
                      fortuneHealth == 3 ||
                      fortuneHealth == 4 ||
                      fortuneHealth == 5) {
                    _activeFortuneHealthOne = true;
                  } else {
                    _activeFortuneHealthOne = false;
                  }
                } else {
                  _activeFortuneHealthOne = false;
                }
                return Image.asset(
                    _activeFortuneHealthOne ? fortuneHealthOneOn : fortuneHealthOneOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneHealthTwoTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneHealth", tempInt.toString());
      setState(() {
        _activeFortuneHealthOne = true;
        _activeFortuneHealthTwo = true;
        _activeFortuneHealthThree = false;
        _activeFortuneHealthFour = false;
        _activeFortuneHealthFive = false;
      });
    }

    Widget buildFortuneHealthTwo(BuildContext context) {
      String fortuneHealthTwoOff = 'images/icon-fortune-off.png';
      String fortuneHealthTwoOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneHealthTwoTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneHealth = snapshot.data;
                  if (fortuneHealth == 2 ||
                      fortuneHealth == 3 ||
                      fortuneHealth == 4 ||
                      fortuneHealth == 5) {
                    _activeFortuneHealthTwo = true;
                  } else {
                    _activeFortuneHealthTwo = false;
                  }
                } else {
                  _activeFortuneHealthTwo = false;
                }
                return Image.asset(
                    _activeFortuneHealthTwo ? fortuneHealthTwoOn : fortuneHealthTwoOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneHealthThreeTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneHealth", tempInt.toString());
      setState(() {
        _activeFortuneHealthOne = true;
        _activeFortuneHealthTwo = true;
        _activeFortuneHealthThree = true;
        _activeFortuneHealthFour = false;
        _activeFortuneHealthFive = false;
      });
    }

    Widget buildFortuneHealthThree(BuildContext context) {
      String fortuneHealthThreeOff = 'images/icon-fortune-off.png';
      String fortuneHealthThreeOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneHealthThreeTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneHealth = snapshot.data;
                  if (fortuneHealth == 3 || fortuneHealth == 4 || fortuneHealth == 5) {
                    _activeFortuneHealthThree = true;
                  } else {
                    _activeFortuneHealthThree = false;
                  }
                } else {
                  _activeFortuneHealthThree = false;
                }
                return Image.asset(
                    _activeFortuneHealthThree
                        ? fortuneHealthThreeOn
                        : fortuneHealthThreeOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneHealthFourTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneHealth", tempInt.toString());
      setState(() {
        _activeFortuneHealthOne = true;
        _activeFortuneHealthTwo = true;
        _activeFortuneHealthThree = true;
        _activeFortuneHealthFour = true;
        _activeFortuneHealthFive = false;
      });
    }

    Widget buildFortuneHealthFour(BuildContext context) {
      String fortuneHealthFourOff = 'images/icon-fortune-off.png';
      String fortuneHealthFourOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneHealthFourTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneHealth = snapshot.data;
                  if (fortuneHealth == 4 || fortuneHealth == 5) {
                    _activeFortuneHealthFour = true;
                  } else {
                    _activeFortuneHealthFour = false;
                  }
                } else {
                  _activeFortuneHealthFour = false;
                }
                return Image.asset(
                    _activeFortuneHealthFour
                        ? fortuneHealthFourOn
                        : fortuneHealthFourOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneHealthFiveTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneHealth", tempInt.toString());
      setState(() {
        _activeFortuneHealthOne = true;
        _activeFortuneHealthTwo = true;
        _activeFortuneHealthThree = true;
        _activeFortuneHealthFour = true;
        _activeFortuneHealthFive = true;
      });
    }

    Widget buildFortuneHealthFive(BuildContext context) {
      String fortuneHealthFiveOff = 'images/icon-fortune-off.png';
      String fortuneHealthFiveOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneHealthFiveTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneHealth = snapshot.data;
                  if (fortuneHealth == 5) {
                    _activeFortuneHealthFive = true;
                  } else {
                    _activeFortuneHealthFive = false;
                  }
                } else {
                  _activeFortuneHealthFive = false;
                }
                return Image.asset(
                    _activeFortuneHealthFive
                        ? fortuneHealthFiveOn
                        : fortuneHealthFiveOff,
                    width: 50,
                    height: 50);
              }));
    }

    return Row(children: <Widget>[
      buildFortuneHealthOne(context),
      buildFortuneHealthTwo(context),
      buildFortuneHealthThree(context),
      buildFortuneHealthFour(context),
      buildFortuneHealthFive(context)
    ]);
  }
}
