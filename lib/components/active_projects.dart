import 'package:flutter/material.dart';
import 'package:todo/const.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Active Projects",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          GridView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10),
            children: [
              GridItem(
                color: kcolor1,
                value: 0.25,
                title: "Medical App",
                subtitle: "9 hours progress",
                valueString: "25%",
              ),
              GridItem(
                color: kcolor2,
                value: 0.6,
                title: "Making History Notes",
                subtitle: "20 hours progress",
                valueString: "60%",
              ),
              GridItem(
                color: kcolor3,
                value: 0.5,
                title: "Assignment",
                subtitle: "15 hours progress",
                valueString: "50%",
              ),
              GridItem(
                color: kcolor4,
                value: 0.95,
                title: "Science",
                subtitle: "5 hours progress",
                valueString: "95%",
              )
            ],
          )
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Color color;
  final double value;
  final String title, subtitle, valueString;
  const GridItem({
    Key? key,
    required this.color,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.valueString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: SizedBox(),
      header: Container(
        height: 220,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                children: [
                  Center(
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: value),
                      duration: Duration(seconds: 1),
                      builder: (context, double val, child) => Container(
                        height: 80,
                        width: 80,
                        child: CircularProgressIndicator(
                          value: val,
                          color: Colors.white,
                          strokeWidth: 5.0,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        valueString,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)), color: color),
      ),
    );
  }
}
