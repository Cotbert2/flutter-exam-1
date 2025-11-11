import 'package:flutter/material.dart';
import './view/tree_view.dart';
import './view/result_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Salary',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (context)=> const TreeView(),
          '/result_page': (context)=> const ResultView(),
          // '/result_page': (context)=> const SalaryView(),
        }
      
    );
  }
}