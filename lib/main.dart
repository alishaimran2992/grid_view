import 'package:flutter/material.dart';
import 'package:grid_view/screens/list_view_screen.dart';
import 'package:grid_view/screens/dynamic_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DynamicListViewScreen(),
    );
  }
}