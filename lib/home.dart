import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:todo/components/active_projects.dart';
import 'package:todo/components/app_bar.dart';
import 'package:todo/components/img_and_name.dart';
import 'package:todo/components/mytaks.dart';

class Home extends StatelessWidget {
  final activeProjectskey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HiddenDrawerMenu(
        backgroundColorMenu: Colors.white,
        screens: [],
      ),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImgAndName(),
            MyTasks(),
            ActiveProjects(key: activeProjectskey)
          ],
        ),
      ),
    );
  }
}
