import 'package:flutter/material.dart';
import 'package:todo/const.dart';

class ImgAndName extends StatelessWidget {
  const ImgAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDefaultPadding,
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                padding: kDefaultPadding,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 0.8),
                    duration: Duration(seconds: 1),
                    builder: (context, double value, child) => Stack(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: CircularProgressIndicator(
                                value: value,
                                strokeWidth: 5.0,
                                color: Colors.red[400],
                              ),
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(8.0),
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset("assets/user.png"))
                          ],
                        )),
              )),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Aravindh Ippili",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "App Developer",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ))
        ],
      ),
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0))),
    );
  }
}
