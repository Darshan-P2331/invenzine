import 'package:flutter/material.dart';
import 'package:invenzine/helper/rounded_button.dart';
import 'package:invenzine/helper/rounded_password_field.dart';
import 'package:invenzine/main.dart';
import 'package:invenzine/pages/signin/background.dart';


// ignore: camel_case_types
class passwordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'PASSWORD',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              RoundedPasswordField(),
              RoundedButton(
                text: 'Next',
                press: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext content) => MyHomePage()
                    )
                  );
                },
              )
            ]
          )
        )
      ),
    );
  }
}