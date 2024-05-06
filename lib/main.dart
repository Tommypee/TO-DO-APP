import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project1/pages/home_page.dart';

void main() async {
  // init the hive
  Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Current Theme:');
    debugPrint('Primary Swatch: ${Theme.of(context).primaryColor}');
    
    return MaterialApp(
      title: 'TODO APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true, // Set the default primary color
      ),
      home: const Homepage(),
    );
  }
}
