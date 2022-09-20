
import 'package:center_dashboard/module/page_two/page_two_screen.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages

import 'layout/dashboard_layout/dashboard_layout_screen.dart';
import 'module/page_three/page_three_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
     initialRoute: DashboardLayoutScreen.id,
      routes: {
        DashboardLayoutScreen.id :(context)=> DashboardLayoutScreen(),
        PageTwoScreen.id :(context)=>const PageTwoScreen(),
        PageThreeScreen.id :(context)=> const PageThreeScreen(),

      },
    );
  }
}
