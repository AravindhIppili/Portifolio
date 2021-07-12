import 'package:flutter/material.dart';
import 'package:todo/components/active_projects.dart';
import 'package:todo/components/app_bar.dart';
import 'package:todo/components/img_and_name.dart';
import 'package:todo/components/mytaks.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final activeProjectskey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        // appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImgAndName(),
              MyTasks(),
              ActiveProjects(key: activeProjectskey)
            ],
          ),
        ),
      ),
    );
  }
}
