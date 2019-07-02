import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FortuneWork extends StatefulWidget {
  final DateTime now;
  final int index;
  FortuneWork(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

  @override
  _FortuneWorkState createState() => _FortuneWorkState();
}

class _FortuneWorkState extends State<FortuneWork> {
  bool _activeFortuneWorkOne = false;
  bool _activeFortuneWorkTwo = false;
  bool _activeFortuneWorkThree = false;
  bool _activeFortuneWorkFour = false;
  bool _activeFortuneWorkFive = false;

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "fortuneWork");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleFortuneWorkOneTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneWork", tempInt.toString());
      setState(() {
        _activeFortuneWorkOne = true;
        _activeFortuneWorkTwo = false;
        _activeFortuneWorkThree = false;
        _activeFortuneWorkFour = false;
        _activeFortuneWorkFive = false;
      });
    }

    Widget buildFortuneWorkOne(BuildContext context) {
      String fortuneWorkOneOff = 'images/icon-fortune-off.png';
      String fortuneWorkOneOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneWorkOneTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneWork = snapshot.data;
                  if (fortuneWork == 1 ||
                      fortuneWork == 2 ||
                      fortuneWork == 3 ||
                      fortuneWork == 4 ||
                      fortuneWork == 5) {
                    _activeFortuneWorkOne = true;
                  } else {
                    _activeFortuneWorkOne = false;
                  }
                } else {
                  _activeFortuneWorkOne = false;
                }
                return Image.asset(
                    _activeFortuneWorkOne ? fortuneWorkOneOn : fortuneWorkOneOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneWorkTwoTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneWork", tempInt.toString());
      setState(() {
        _activeFortuneWorkOne = true;
        _activeFortuneWorkTwo = true;
        _activeFortuneWorkThree = false;
        _activeFortuneWorkFour = false;
        _activeFortuneWorkFive = false;
      });
    }

    Widget buildFortuneWorkTwo(BuildContext context) {
      String fortuneWorkTwoOff = 'images/icon-fortune-off.png';
      String fortuneWorkTwoOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneWorkTwoTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneWork = snapshot.data;
                  if (fortuneWork == 2 ||
                      fortuneWork == 3 ||
                      fortuneWork == 4 ||
                      fortuneWork == 5) {
                    _activeFortuneWorkTwo = true;
                  } else {
                    _activeFortuneWorkTwo = false;
                  }
                } else {
                  _activeFortuneWorkTwo = false;
                }
                return Image.asset(
                    _activeFortuneWorkTwo ? fortuneWorkTwoOn : fortuneWorkTwoOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneWorkThreeTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneWork", tempInt.toString());
      setState(() {
        _activeFortuneWorkOne = true;
        _activeFortuneWorkTwo = true;
        _activeFortuneWorkThree = true;
        _activeFortuneWorkFour = false;
        _activeFortuneWorkFive = false;
      });
    }

    Widget buildFortuneWorkThree(BuildContext context) {
      String fortuneWorkThreeOff = 'images/icon-fortune-off.png';
      String fortuneWorkThreeOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneWorkThreeTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneWork = snapshot.data;
                  if (fortuneWork == 3 || fortuneWork == 4 || fortuneWork == 5) {
                    _activeFortuneWorkThree = true;
                  } else {
                    _activeFortuneWorkThree = false;
                  }
                } else {
                  _activeFortuneWorkThree = false;
                }
                return Image.asset(
                    _activeFortuneWorkThree
                        ? fortuneWorkThreeOn
                        : fortuneWorkThreeOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneWorkFourTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneWork", tempInt.toString());
      setState(() {
        _activeFortuneWorkOne = true;
        _activeFortuneWorkTwo = true;
        _activeFortuneWorkThree = true;
        _activeFortuneWorkFour = true;
        _activeFortuneWorkFive = false;
      });
    }

    Widget buildFortuneWorkFour(BuildContext context) {
      String fortuneWorkFourOff = 'images/icon-fortune-off.png';
      String fortuneWorkFourOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneWorkFourTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneWork = snapshot.data;
                  if (fortuneWork == 4 || fortuneWork == 5) {
                    _activeFortuneWorkFour = true;
                  } else {
                    _activeFortuneWorkFour = false;
                  }
                } else {
                  _activeFortuneWorkFour = false;
                }
                return Image.asset(
                    _activeFortuneWorkFour
                        ? fortuneWorkFourOn
                        : fortuneWorkFourOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneWorkFiveTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneWork", tempInt.toString());
      setState(() {
        _activeFortuneWorkOne = true;
        _activeFortuneWorkTwo = true;
        _activeFortuneWorkThree = true;
        _activeFortuneWorkFour = true;
        _activeFortuneWorkFive = true;
      });
    }

    Widget buildFortuneWorkFive(BuildContext context) {
      String fortuneWorkFiveOff = 'images/icon-fortune-off.png';
      String fortuneWorkFiveOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneWorkFiveTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneWork = snapshot.data;
                  if (fortuneWork == 5) {
                    _activeFortuneWorkFive = true;
                  } else {
                    _activeFortuneWorkFive = false;
                  }
                } else {
                  _activeFortuneWorkFive = false;
                }
                return Image.asset(
                    _activeFortuneWorkFive
                        ? fortuneWorkFiveOn
                        : fortuneWorkFiveOff,
                    width: 50,
                    height: 50);
              }));
    }

    return Row(children: <Widget>[
      buildFortuneWorkOne(context),
      buildFortuneWorkTwo(context),
      buildFortuneWorkThree(context),
      buildFortuneWorkFour(context),
      buildFortuneWorkFive(context)
    ]);
  }
}
