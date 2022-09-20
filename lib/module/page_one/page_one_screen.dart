import 'package:center_dashboard/module/page_one/student_levels/students_level_five/student_level_five_screen.dart';
import 'package:center_dashboard/module/page_one/student_levels/students_level_four/student_level_four_screen.dart';
import 'package:center_dashboard/module/page_one/student_levels/students_level_one/students_level_one_screen.dart';
import 'package:center_dashboard/module/page_one/student_levels/students_level_six/student_level_six_screen.dart';
import 'package:center_dashboard/module/page_one/student_levels/students_level_three/student_level_three_screen.dart';
import 'package:center_dashboard/module/page_one/student_levels/students_level_two/students_level_two_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/component.dart';


class PageOneScreen extends StatelessWidget {
  const PageOneScreen({Key? key}) : super(key: key);
  static const String id = "PageOneScreen";
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2 ,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
      children: [
        buildStudentLevelCard
          (
          text: "طلاب الصف الاول الاعدادي",
            onTap: () {
              navigateTo( context, StudentsLevelOneScreen());
            }

        ),
        buildStudentLevelCard
          (
            text: "طلاب الصف الثاني الاعدادي",
            onTap: () {
              navigateTo( context, StudentsLevelTwoScreen());
            }

        ),
        buildStudentLevelCard
          (
            text: "طلاب الصف الثالث الاعدادي",
        onTap: () {
    navigateTo( context, StudentsLevelThreeScreen());
    }

    ),
        buildStudentLevelCard
          (
            text: "طلاب الصف الاول الثانوي",
            onTap: () {
              navigateTo( context, StudentsLevelFourScreen());
            }

        ),
        buildStudentLevelCard
          (
            text: "طلاب الصف الثاني الثانوي  ",
            onTap: () {
              navigateTo( context, StudentsLevelFiveScreen());
            }

        ),
        buildStudentLevelCard
          (
            text: "طلاب الصف الثالث الثانوي",
            onTap: () {
              navigateTo( context, StudentsLevelSixScreen());
            }

        ),
      ],



       );
  }
}
