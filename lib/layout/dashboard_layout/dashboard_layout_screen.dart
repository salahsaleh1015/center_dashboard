import 'package:center_dashboard/module/page_one/page_one_screen.dart';
import 'package:center_dashboard/module/page_three/page_three_screen.dart';
import 'package:center_dashboard/module/page_two/page_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class DashboardLayoutScreen extends StatefulWidget {
   DashboardLayoutScreen({Key? key}) : super(key: key);
  static const String id = "DashboardLayoutScreen";

  @override
  State<DashboardLayoutScreen> createState() => _DashboardLayoutScreenState();
}

class _DashboardLayoutScreenState extends State<DashboardLayoutScreen> {
 Widget _selectedScreen =  PageOneScreen();

   void selectItem(item){
      switch(item.route){
        case PageOneScreen.id : setState(() {
          _selectedScreen = PageOneScreen();
        });
       break;
        case PageTwoScreen.id : setState(() {
          _selectedScreen = PageTwoScreen();
        });
        break;
        case PageThreeScreen.id : setState(() {
          _selectedScreen = PageThreeScreen();
        });
        break;

      }

    }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,

      sideBar: SideBar(
        header: Container(
          height: 150,
      color: Colors.grey[200],
          width: double.infinity,

          child: const Center(
            child: Icon(Icons.person,size: 40),
          ),
        ),
        items: const [
          AdminMenuItem(
            title: 'طلاب ',
            route:PageOneScreen.id,
            icon: Icons.person,
          ),
          AdminMenuItem(
            title: 'مدرسين ',
            route: PageTwoScreen.id,
            icon: Icons.person,
          ),

          AdminMenuItem(
            title: 'حصص ',
            route: PageThreeScreen.id,
            icon: Icons.star,
          ),


        ],
        selectedRoute: DashboardLayoutScreen.id,
        onSelected: (item) {
          selectItem(item);
          // if (item.route != null) {
          //   Navigator.of(context).pushNamed(item.route!);
          // }
        },

      ),
      body: SingleChildScrollView(
        child:_selectedScreen,
      ),
    );
  }
}