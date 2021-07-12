import 'package:flutter/material.dart';
import 'package:todo/const.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDefaultPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Tasks",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              FloatingActionButton(
                  backgroundColor: Colors.green[900],
                  elevation: 0,
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                      helpText: 'Choose Date',
                      cancelText: 'Cancel',
                      confirmText: 'Ok',
                    );
                  },
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ))
            ],
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              buildTasks(
                  "To Do", "5 tasks now. 1 started", Icons.lock_clock, kcolor1),
              buildTasks("In Progress", "1 tasks now. 1 started",
                  Icons.timelapse, kcolor2),
              buildTasks(
                  "Done", "18 tasks now. 13 started", Icons.timeline, kcolor3),
            ],
          )
        ],
      ),
    );
  }

  ListTile buildTasks(
      String title, String subtitle, IconData icon, Color color) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
