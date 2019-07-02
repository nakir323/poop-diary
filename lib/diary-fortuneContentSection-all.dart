import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FortuneAll extends StatefulWidget {
  final DateTime now;
  final int index;
  FortuneAll(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

  @override
  _FortuneAllState createState() => _FortuneAllState();
}

class _FortuneAllState extends State<FortuneAll> {
  bool _activeFortuneAllOne = false;
  bool _activeFortuneAllTwo = false;
  bool _activeFortuneAllThree = false;
  bool _activeFortuneAllFour = false;
  bool _activeFortuneAllFive = false;

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "fortuneAll");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleFortuneAllOneTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneAll", tempInt.toString());
      setState(() {
        _activeFortuneAllOne = true;
        _activeFortuneAllTwo = false;
        _activeFortuneAllThree = false;
        _activeFortuneAllFour = false;
        _activeFortuneAllFive = false;
      });
    }

    Widget buildFortuneAllOne(BuildContext context) {
      String fortuneAllOneOff = 'images/icon-fortune-off.png';
      String fortuneAllOneOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneAllOneTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneAll = snapshot.data;
                  if (fortuneAll == 1 ||
                      fortuneAll == 2 ||
                      fortuneAll == 3 ||
                      fortuneAll == 4 ||
                      fortuneAll == 5) {
                    _activeFortuneAllOne = true;
                  } else {
                    _activeFortuneAllOne = false;
                  }
                } else {
                  _activeFortuneAllOne = false;
                }
                return Image.asset(
                    _activeFortuneAllOne ? fortuneAllOneOn : fortuneAllOneOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleFortuneAllTwoTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneAll", tempInt.toString());
      setState(() {
        _activeFortuneAllOne = true;
        _activeFortuneAllTwo = true;
        _activeFortuneAllThree = false;
        _activeFortuneAllFour = false;
        _activeFortuneAllFive = false;
      });
    }

    Widget buildFortuneAllTwo(BuildContext context) {
      String fortuneAllTwoOff = 'images/icon-fortune-off.png';
      String fortuneAllTwoOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneAllTwoTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneAll = snapshot.data;
                  if (fortuneAll == 2 ||
                      fortuneAll == 3 ||
                      fortuneAll == 4 ||
                      fortuneAll == 5) {
                    _activeFortuneAllTwo = true;
                  } else {
                    _activeFortuneAllTwo = false;
                  }
                } else {
                  _activeFortuneAllTwo = false;
                }
                return Image.asset(
                    _activeFortuneAllTwo ? fortuneAllTwoOn : fortuneAllTwoOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleFortuneAllThreeTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneAll", tempInt.toString());
      setState(() {
        _activeFortuneAllOne = true;
        _activeFortuneAllTwo = true;
        _activeFortuneAllThree = true;
        _activeFortuneAllFour = false;
        _activeFortuneAllFive = false;
      });
    }

    Widget buildFortuneAllThree(BuildContext context) {
      String fortuneAllThreeOff = 'images/icon-fortune-off.png';
      String fortuneAllThreeOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneAllThreeTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneAll = snapshot.data;
                  if (fortuneAll == 3 || fortuneAll == 4 || fortuneAll == 5) {
                    _activeFortuneAllThree = true;
                  } else {
                    _activeFortuneAllThree = false;
                  }
                } else {
                  _activeFortuneAllThree = false;
                }
                return Image.asset(
                    _activeFortuneAllThree
                        ? fortuneAllThreeOn
                        : fortuneAllThreeOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleFortuneAllFourTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneAll", tempInt.toString());
      setState(() {
        _activeFortuneAllOne = true;
        _activeFortuneAllTwo = true;
        _activeFortuneAllThree = true;
        _activeFortuneAllFour = true;
        _activeFortuneAllFive = false;
      });
    }

    Widget buildFortuneAllFour(BuildContext context) {
      String fortuneAllFourOff = 'images/icon-fortune-off.png';
      String fortuneAllFourOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneAllFourTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneAll = snapshot.data;
                  if (fortuneAll == 4 || fortuneAll == 5) {
                    _activeFortuneAllFour = true;
                  } else {
                    _activeFortuneAllFour = false;
                  }
                } else {
                  _activeFortuneAllFour = false;
                }
                return Image.asset(
                    _activeFortuneAllFour
                        ? fortuneAllFourOn
                        : fortuneAllFourOff,
                    width: 60,
                    height: 60);
              }));
    }

    void _handleFortuneAllFiveTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneAll", tempInt.toString());
      setState(() {
        _activeFortuneAllOne = true;
        _activeFortuneAllTwo = true;
        _activeFortuneAllThree = true;
        _activeFortuneAllFour = true;
        _activeFortuneAllFive = true;
      });
    }

    Widget buildFortuneAllFive(BuildContext context) {
      String fortuneAllFiveOff = 'images/icon-fortune-off.png';
      String fortuneAllFiveOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneAllFiveTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneAll = snapshot.data;
                  if (fortuneAll == 5) {
                    _activeFortuneAllFive = true;
                  } else {
                    _activeFortuneAllFive = false;
                  }
                } else {
                  _activeFortuneAllFive = false;
                }
                return Image.asset(
                    _activeFortuneAllFive
                        ? fortuneAllFiveOn
                        : fortuneAllFiveOff,
                    width: 60,
                    height: 60);
              }));
    }

    return Row(children: <Widget>[
      buildFortuneAllOne(context),
      buildFortuneAllTwo(context),
      buildFortuneAllThree(context),
      buildFortuneAllFour(context),
      buildFortuneAllFive(context)
    ]);
  }
}
