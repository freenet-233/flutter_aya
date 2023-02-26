import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aya Get Rich'),
        ),
        body: Center(
          child: currentIndex == 0 
          ? Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledForegroundColor:  Colors.white,
                  foregroundColor: Colors.orange,
                ),
                onPressed: () {
                  setState(() {
                    buttonName = 'Clicked';
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'Clicked';
                  });
                },
                child: Text(buttonName),
              ),
            ],
            ),
            
          ) 
          : Image.asset('images/galaxy.jpg')
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings)
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;

            });
          },
        ),
      ),
    );
  }
}