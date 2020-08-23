import 'package:flutter/material.dart';
import 'package:invenzine/helper/or_divider.dart';
import 'package:invenzine/helper/rounded_button.dart';
import 'package:invenzine/pages/signin/background.dart';
import 'package:invenzine/pages/signin/email.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                )
              ),
              loginButton('Sign in with Google'),
              OrDivider(),
              RoundedButton(
                text: 'Sign In with Email',
                press: () {Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) {
                    return emailPage();
                  } )
                );
                }
              )
            ]
          )
        ),
      )
    );
  }
}

Widget loginButton(String text) {
  return OutlineButton(
    onPressed: () { },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
    splashColor: Colors.yellow,
    borderSide: BorderSide(color: Colors.yellowAccent),
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/img/google_logo.png'), height: 35),
          Padding(padding: EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25
            ),
          ),
          )
        ],
      ),
    ),
  );
}