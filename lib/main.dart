import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/initial_page.dart';
import 'firebase_options.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        name: 'Flutter Firebase Event',
        options: DefaultFirebaseOptions.currentPlatform);



    // FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorObservers: [
      //
      //  FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)
      //
      // ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  InitialPage(),
    );
  }
}

