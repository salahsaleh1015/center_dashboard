import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildStudentLevelCard({required String text , required VoidCallback onTap}) => InkWell(
  onTap: onTap,
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(60),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            const Image(
              image: AssetImage("images/h.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )),
            )
          ],
        ),
      ),
    );
//================================================================================
Future navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
void navigateAndReplace(context, widget) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => widget));
//=============================================================================
