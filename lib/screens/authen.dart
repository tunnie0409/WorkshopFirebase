import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget emailTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'email', hintText: 'example@email.com'),
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'password', hintText: 'your password'),
      obscureText: true,
    );
  }

  Widget singinButton() {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.greenAccent[400],
      child: Text('Sign in'),
      onPressed: () {},
    );
  }

  Widget singupButton() {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.redAccent,
      child: Text('Sign up'),
      onPressed: () {},
    );
  }

  Widget showAppName() {
    return Text(
      'Show App Name ',
      style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pink[800], Colors.pinkAccent[400]],
                begin: Alignment(0, 1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: showLogo(),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: showAppName(),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: emailTextFormField(),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                    margin: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: singinButton(),
                  )),
                   Expanded(
                    child: Container(
                    margin: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: singupButton(),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
