import 'package:flutter/material.dart';
import 'package:invenzine/helper/rounded_button.dart';
import 'package:invenzine/helper/rounded_input_field.dart';
import 'package:invenzine/pages/signin/background.dart';
import 'package:invenzine/pages/signin/password.dart';

// ignore: camel_case_types
class emailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'EMAIL',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              RoundedInputField(
                hintText: 'Enter your Email',
                icon: Icons.email,
              ),
              RoundedButton(
                text: 'Next',
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {
                        return passwordPage();
                      }
                    )
                  );
                },
              )
            ]
          )
        )
      )
    );
  }
}