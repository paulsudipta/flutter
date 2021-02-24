import 'package:flutter/material.dart';
import 'firstPage.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      title: "Project1",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first_screen"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue[900],
          height: 40.0,
          minWidth: 200.0,
          splashColor: Colors.green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => firstscreen(),
                ));
          },
          child: Text(
            "Welcome!",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          shape: StadiumBorder(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('camera'),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('me'),
              backgroundColor: Colors.grey),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
