import 'package:flutter/material.dart';
import 'package:invenzine/pages/main_page.dart';
import 'package:invenzine/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invenzine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;
  List<Widget> _pages =[
    Home(),
    Setting()
  ];
  void _ontapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invenzine')),
      body: _pages[_selectedindex],
      bottomNavigationBar: 
      BottomNavigationBar(items: const 
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          title: SizedBox.shrink()), 
        BottomNavigationBarItem(
          icon: Icon(Icons.settings), 
          title: SizedBox.shrink())
          ], 
        currentIndex: _selectedindex,
        unselectedItemColor: Colors.grey,  
        onTap: _ontapped),
    );
  }
}