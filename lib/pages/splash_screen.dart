import 'package:flutter/material.dart';
import 'package:invenzine/main.dart';
import 'package:invenzine/pages/signin/social.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkUserSignIn().then(
      (status) {
        if(status){
          _navigate();
        }
        else{
          _navigateHome();
        }
      }
    );
  }
  Future<bool> _checkUserSignIn() async {
    await Future.delayed(Duration(milliseconds: 5000), () { });

    return true;
  }

  void _navigate() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext content) => Social()
      )
    );
  }

  void _navigateHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext content) => MyHomePage()
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image(image: AssetImage('assets/img/photo.jpg')))
      ),
    );
  }
}
