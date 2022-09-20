import 'package:flutter/material.dart';

class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({Key? key}) : super(key: key);
  static const String id = "PageTwoScreen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PageTwoScreen" , style: TextStyle(
        fontSize: 30,
      )),
    );
  }
}
