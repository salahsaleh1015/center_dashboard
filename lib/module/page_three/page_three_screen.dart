import 'package:flutter/material.dart';

class PageThreeScreen extends StatelessWidget {
  const PageThreeScreen({Key? key}) : super(key: key);
  static const String id = "PageThreeScreen";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("PageThreeScreen" , style: TextStyle(
        fontSize: 30,
      )),
    );
  }
}
