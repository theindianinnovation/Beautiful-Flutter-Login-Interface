import 'package:flutter/material.dart';
import 'package:login_ui/detailpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset('assets/logo.png'),
        radius: 48.0,
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'codestudio@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      initialValue: 'some password',
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage()));
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text(
          'Log In',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ),
    );

    final forgotlabel = FlatButton(
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.black, fontSize: 10.0),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding:EdgeInsets.only(left: 24.0,right: 24.0) ,
          children: <Widget>[
            logo,
            SizedBox(
              height: 48.0,
            ),
            email,
            SizedBox(
              height: 8.0,
            ),
            password,
            SizedBox(
              height: 24.0,
            ),
            loginButton,
            forgotlabel,
          ],
        ),
      ),
    );
  }
}
