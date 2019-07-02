import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FortuneMoney extends StatefulWidget {
  final DateTime now;
  final int index;
  FortuneMoney(
      {Key key, @required context, @required this.now, @required this.index})
      : super(key: key);

  @override
  _FortuneMoneyState createState() => _FortuneMoneyState();
}

class _FortuneMoneyState extends State<FortuneMoney> {
  bool _activeFortuneMoneyOne = false;
  bool _activeFortuneMoneyTwo = false;
  bool _activeFortuneMoneyThree = false;
  bool _activeFortuneMoneyFour = false;
  bool _activeFortuneMoneyFive = false;

  @override
  Widget build(BuildContext context) {
    String nowStr = widget.now.year.toString() +
        "/" +
        widget.now.month.toString() +
        "/" +
        widget.index.toString();

    Future<int> _getOneDayPoop() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String tempStr = prefs.getString(nowStr + "fortuneMoney");
      if (tempStr != null) {
        return int.parse(tempStr);
      }
    }

    void _handleFortuneMoneyOneTap() async {
      var tempInt = 1;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneMoney", tempInt.toString());
      setState(() {
        _activeFortuneMoneyOne = true;
        _activeFortuneMoneyTwo = false;
        _activeFortuneMoneyThree = false;
        _activeFortuneMoneyFour = false;
        _activeFortuneMoneyFive = false;
      });
    }

    Widget buildFortuneMoneyOne(BuildContext context) {
      String fortuneMoneyOneOff = 'images/icon-fortune-off.png';
      String fortuneMoneyOneOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneMoneyOneTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneMoney = snapshot.data;
                  if (fortuneMoney == 1 ||
                      fortuneMoney == 2 ||
                      fortuneMoney == 3 ||
                      fortuneMoney == 4 ||
                      fortuneMoney == 5) {
                    _activeFortuneMoneyOne = true;
                  } else {
                    _activeFortuneMoneyOne = false;
                  }
                } else {
                  _activeFortuneMoneyOne = false;
                }
                return Image.asset(
                    _activeFortuneMoneyOne ? fortuneMoneyOneOn : fortuneMoneyOneOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneMoneyTwoTap() async {
      var tempInt = 2;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneMoney", tempInt.toString());
      setState(() {
        _activeFortuneMoneyOne = true;
        _activeFortuneMoneyTwo = true;
        _activeFortuneMoneyThree = false;
        _activeFortuneMoneyFour = false;
        _activeFortuneMoneyFive = false;
      });
    }

    Widget buildFortuneMoneyTwo(BuildContext context) {
      String fortuneMoneyTwoOff = 'images/icon-fortune-off.png';
      String fortuneMoneyTwoOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneMoneyTwoTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneMoney = snapshot.data;
                  if (fortuneMoney == 2 ||
                      fortuneMoney == 3 ||
                      fortuneMoney == 4 ||
                      fortuneMoney == 5) {
                    _activeFortuneMoneyTwo = true;
                  } else {
                    _activeFortuneMoneyTwo = false;
                  }
                } else {
                  _activeFortuneMoneyTwo = false;
                }
                return Image.asset(
                    _activeFortuneMoneyTwo ? fortuneMoneyTwoOn : fortuneMoneyTwoOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneMoneyThreeTap() async {
      var tempInt = 3;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneMoney", tempInt.toString());
      setState(() {
        _activeFortuneMoneyOne = true;
        _activeFortuneMoneyTwo = true;
        _activeFortuneMoneyThree = true;
        _activeFortuneMoneyFour = false;
        _activeFortuneMoneyFive = false;
      });
    }

    Widget buildFortuneMoneyThree(BuildContext context) {
      String fortuneMoneyThreeOff = 'images/icon-fortune-off.png';
      String fortuneMoneyThreeOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneMoneyThreeTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneMoney = snapshot.data;
                  if (fortuneMoney == 3 || fortuneMoney == 4 || fortuneMoney == 5) {
                    _activeFortuneMoneyThree = true;
                  } else {
                    _activeFortuneMoneyThree = false;
                  }
                } else {
                  _activeFortuneMoneyThree = false;
                }
                return Image.asset(
                    _activeFortuneMoneyThree
                        ? fortuneMoneyThreeOn
                        : fortuneMoneyThreeOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneMoneyFourTap() async {
      var tempInt = 4;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneMoney", tempInt.toString());
      setState(() {
        _activeFortuneMoneyOne = true;
        _activeFortuneMoneyTwo = true;
        _activeFortuneMoneyThree = true;
        _activeFortuneMoneyFour = true;
        _activeFortuneMoneyFive = false;
      });
    }

    Widget buildFortuneMoneyFour(BuildContext context) {
      String fortuneMoneyFourOff = 'images/icon-fortune-off.png';
      String fortuneMoneyFourOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneMoneyFourTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneMoney = snapshot.data;
                  if (fortuneMoney == 4 || fortuneMoney == 5) {
                    _activeFortuneMoneyFour = true;
                  } else {
                    _activeFortuneMoneyFour = false;
                  }
                } else {
                  _activeFortuneMoneyFour = false;
                }
                return Image.asset(
                    _activeFortuneMoneyFour
                        ? fortuneMoneyFourOn
                        : fortuneMoneyFourOff,
                    width: 50,
                    height: 50);
              }));
    }

    void _handleFortuneMoneyFiveTap() async {
      var tempInt = 5;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(nowStr + "fortuneMoney", tempInt.toString());
      setState(() {
        _activeFortuneMoneyOne = true;
        _activeFortuneMoneyTwo = true;
        _activeFortuneMoneyThree = true;
        _activeFortuneMoneyFour = true;
        _activeFortuneMoneyFive = true;
      });
    }

    Widget buildFortuneMoneyFive(BuildContext context) {
      String fortuneMoneyFiveOff = 'images/icon-fortune-off.png';
      String fortuneMoneyFiveOn = 'images/icon-fortune-on.png';

      return GestureDetector(
          onTap: _handleFortuneMoneyFiveTap,
          child: FutureBuilder(
              future: _getOneDayPoop(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var fortuneMoney = snapshot.data;
                  if (fortuneMoney == 5) {
                    _activeFortuneMoneyFive = true;
                  } else {
                    _activeFortuneMoneyFive = false;
                  }
                } else {
                  _activeFortuneMoneyFive = false;
                }
                return Image.asset(
                    _activeFortuneMoneyFive
                        ? fortuneMoneyFiveOn
                        : fortuneMoneyFiveOff,
                    width: 50,
                    height: 50);
              }));
    }

    return Row(children: <Widget>[
      buildFortuneMoneyOne(context),
      buildFortuneMoneyTwo(context),
      buildFortuneMoneyThree(context),
      buildFortuneMoneyFour(context),
      buildFortuneMoneyFive(context)
    ]);
  }
}
