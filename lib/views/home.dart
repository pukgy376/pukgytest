import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showImage1() {
    return Container(
      width: 150,
      height: 100,
      child: Image.asset('images/two.png'),
    );
  }

  Widget showImage2() {
    return Container(
      width: 150,
      height: 100,
      child: Image.asset('images/img.png'),
    );
  }

  Widget showWelcome() {
    return Text(
      "Welcome",
      style: TextStyle(
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        color: Colors.orangeAccent.shade700,
      ),
    );
  }

  Widget showText() {
    return Text("smileFOKUS Interview Exam.",
        style: TextStyle(
          fontSize: 26.0,
          fontFamily: 'NotoSans',
          fontWeight: FontWeight.w300,
        ));
  }

  Widget dayView() {
    return ButtonTheme(
        minWidth: 500.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: _dayview,
          child: Text(
            'DAY VIEW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ));
  }

  _dayview() async {
    const url =
        'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-day-2020-04-01.json';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget monthView() {
    return ButtonTheme(
        minWidth: 500.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: _monthview,
          child: Text(
            'MONTH VIEW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ));
  }

  _monthview() async {
    const url =
        'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-month-2020-03.json';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget quarterView() {
    return ButtonTheme(
        minWidth: 500.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: _quarterview,
          child: Text(
            'QUARTER VIEW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ));
  }

  _quarterview() async {
    const url =
        'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-quarter-2019-06.json';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget yearView() {
    return ButtonTheme(
        minWidth: 500.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: _yearview,
          child: Text(
            'YEAR VIEW',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ));
  }

  _yearview() async {
    const url =
        'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-quarter-2019-06.json';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showWelcome(),
                SizedBox(
                  height: 5.0,
                ),
                showText(),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                showImage1(),
                SizedBox(
                  height: 5.0,
                ),
                showImage2(),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                dayView(),
                SizedBox(
                  height: 20.0,
                ),
                monthView(),
                SizedBox(
                  height: 20.0,
                ),
                quarterView(),
                SizedBox(
                  height: 20.0,
                ),
                yearView()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
