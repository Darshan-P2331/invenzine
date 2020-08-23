import 'package:flutter/material.dart';
import 'package:invenzine/helper/widgets.dart';
import 'package:invenzine/pages/splash_screen.dart';

// Home Page Start


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List newslist = ['assets/img/k.jpg', 'assets/img/w.jpg', 'assets/img/wallhaven-13x79v.jpg', 'assets/img/wallhaven-8396gk.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: ListView.builder(
              itemCount: newslist.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (content, index) {
                return NewsTile(
                  imgUrl: newslist[index],
                  title: 'Title',
                  desc: 'Lorem ipsum dolor sit amet consectetur, '
                    'adipisicing elit. Veritatis a, minus doloremque ullam deserunt '
                    'sit voluptatum sed quisquam explicabo quidem voluptatibus fuga tenetur'
                    ' atque repudiandae ipsam reprehenderit officiis laudantium quod?',
                  date: DateTime.now()
                );
              }
            ),
          ),
        )
      ),
    );
  }
}


// Home Page End

// Profile Setting Start


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Widget logoutButton(String text) {
    return OutlineButton(
    onPressed: () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SplashScreen()
        )
      );
     },
    splashColor: Colors.redAccent,
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 10),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22
            ),
          ),
          ),
          Icon(Icons.exit_to_app, color: Colors.redAccent,),
        ],
      ),
    ),
  );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'UserName',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8,),
          logoutButton('Log Out')
        ],
      ),
    );
  }
}


// Profile Setting End