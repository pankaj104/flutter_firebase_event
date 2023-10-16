import 'dart:core';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_event/Screens/profile_page.dart';
import 'business_page.dart';
import 'home_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int selectedIndex = 0;
  final FirebaseAnalytics  analytics = FirebaseAnalytics.instance;
  static List pageNames = ['HomePage', 'BusinessPage', 'ProfilePage'];

  // static const List<Widget> =

  static const List<Widget>  widgetOptions  = <Widget>[
    HomePage(),
    BusinessPage(),
    ProfilePage()
  ];

  @override
  void initState()
  {

    analytics.setAnalyticsCollectionEnabled(true);
    FirebaseAnalytics.instance.setUserProperty(name: "testing", value: "test");

    super.initState();
  }

  @override
  void dispose() {
    // Clean up code here
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Event'),
      ),

      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],

        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,

        onTap: (index) async{
          FirebaseAnalytics.instance.logEvent(name: 'mycustomevent');

          await analytics.logEvent(
            callOptions: AnalyticsCallOptions(global: true),

              name: 'page_tracked',
              parameters: {
                "page_name": pageNames[index],
                "page_index":index,
              }
          );
          setState(() {
            selectedIndex = index;
          });
        },
      ),

    );
  }
}
