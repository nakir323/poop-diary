import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FortuneLove extends StatefulWidget {
  final DateTime now;
  final int index;
  FortuneLove(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

  @override
  _FortuneLoveState createState() => _FortuneLoveState();
}

class _FortuneLoveState extends State<FortuneLove> {
  bool _activeFortuneLoveOne = false;
  bool _activeFortuneLoveTwo = false;
  bool _activeFortuneLoveThree = false;
  bool _activeFortuneLoveFour = false;
  bool _activeFortuneLoveFive = false;

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "fortuneLove");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleFortuneLoveOneTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneLove", tempInt.toString());
      setState(() {
        _activeFortuneLoveOne = true;
        _activeFortuneLoveTwo = false;
        _activeFortuneLoveThree = false;
        _activeFortuneLoveFour = false;
        _activeFortuneLoveFive = false;
      });
    }

    Widget buildFortuneLoveOne(BuildContext context) {
      String fortuneLoveOneOff = 'images/icon-fortune-off.png';
      String fortuneLoveOneOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneLoveOneTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneLove = snapshot.data;
                  if (fortuneLove == 1 ||
                      fortuneLove == 2 ||
                      fortuneLove == 3 ||
                      fortuneLove == 4 ||
                      fortuneLove == 5) {
                    _activeFortuneLoveOne = true;
                  } else {
                    _activeFortuneLoveOne = false;
                  }
                } else {
                  _activeFortuneLoveOne = false;
                }
                return Image.asset(
                    _activeFortuneLoveOne ? fortuneLoveOneOn : fortuneLoveOneOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneLoveTwoTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneLove", tempInt.toString());
      setState(() {
        _activeFortuneLoveOne = true;
        _activeFortuneLoveTwo = true;
        _activeFortuneLoveThree = false;
        _activeFortuneLoveFour = false;
        _activeFortuneLoveFive = false;
      });
    }

    Widget buildFortuneLoveTwo(BuildContext context) {
      String fortuneLoveTwoOff = 'images/icon-fortune-off.png';
      String fortuneLoveTwoOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneLoveTwoTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneLove = snapshot.data;
                  if (fortuneLove == 2 ||
                      fortuneLove == 3 ||
                      fortuneLove == 4 ||
                      fortuneLove == 5) {
                    _activeFortuneLoveTwo = true;
                  } else {
                    _activeFortuneLoveTwo = false;
                  }
                } else {
                  _activeFortuneLoveTwo = false;
                }
                return Image.asset(
                    _activeFortuneLoveTwo ? fortuneLoveTwoOn : fortuneLoveTwoOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneLoveThreeTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneLove", tempInt.toString());
      setState(() {
        _activeFortuneLoveOne = true;
        _activeFortuneLoveTwo = true;
        _activeFortuneLoveThree = true;
        _activeFortuneLoveFour = false;
        _activeFortuneLoveFive = false;
      });
    }

    Widget buildFortuneLoveThree(BuildContext context) {
      String fortuneLoveThreeOff = 'images/icon-fortune-off.png';
      String fortuneLoveThreeOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneLoveThreeTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneLove = snapshot.data;
                  if (fortuneLove == 3 || fortuneLove == 4 || fortuneLove == 5) {
                    _activeFortuneLoveThree = true;
                  } else {
                    _activeFortuneLoveThree = false;
                  }
                } else {
                  _activeFortuneLoveThree = false;
                }
                return Image.asset(
                    _activeFortuneLoveThree
                        ? fortuneLoveThreeOn
                        : fortuneLoveThreeOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneLoveFourTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneLove", tempInt.toString());
      setState(() {
        _activeFortuneLoveOne = true;
        _activeFortuneLoveTwo = true;
        _activeFortuneLoveThree = true;
        _activeFortuneLoveFour = true;
        _activeFortuneLoveFive = false;
      });
    }

    Widget buildFortuneLoveFour(BuildContext context) {
      String fortuneLoveFourOff = 'images/icon-fortune-off.png';
      String fortuneLoveFourOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneLoveFourTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneLove = snapshot.data;
                  if (fortuneLove == 4 || fortuneLove == 5) {
                    _activeFortuneLoveFour = true;
                  } else {
                    _activeFortuneLoveFour = false;
                  }
                } else {
                  _activeFortuneLoveFour = false;
                }
                return Image.asset(
                    _activeFortuneLoveFour
                        ? fortuneLoveFourOn
                        : fortuneLoveFourOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneLoveFiveTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneLove", tempInt.toString());
      setState(() {
        _activeFortuneLoveOne = true;
        _activeFortuneLoveTwo = true;
        _activeFortuneLoveThree = true;
        _activeFortuneLoveFour = true;
        _activeFortuneLoveFive = true;
      });
    }

    Widget buildFortuneLoveFive(BuildContext context) {
      String fortuneLoveFiveOff = 'images/icon-fortune-off.png';
      String fortuneLoveFiveOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneLoveFiveTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneLove = snapshot.data;
                  if (fortuneLove == 5) {
                    _activeFortuneLoveFive = true;
                  } else {
                    _activeFortuneLoveFive = false;
                  }
                } else {
                  _activeFortuneLoveFive = false;
                }
                return Image.asset(
                    _activeFortuneLoveFive
                        ? fortuneLoveFiveOn
                        : fortuneLoveFiveOff,
                    width: 50,
                    height: 50);
              }));
    }

    return Row(children: <Widget>[
      buildFortuneLoveOne(context),
      buildFortuneLoveTwo(context),
      buildFortuneLoveThree(context),
      buildFortuneLoveFour(context),
      buildFortuneLoveFive(context)
    ]);
  }
}
