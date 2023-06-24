import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyZainWidget extends StatefulWidget {
  const MyZainWidget({super.key});

  @override
  State<MyZainWidget> createState() => _MyZainWidgetState();
}

class _MyZainWidgetState extends State<MyZainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(255, 238, 0, 1)),
              child: Center(
                  child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Blue",
                        style: TextStyle(color: Color.fromRGBO(0, 0, 255, 1)),
                      ),
                      Text(
                        "Red",
                        style: TextStyle(color: Color.fromRGBO(255, 0, 0, 1)),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Green",
                        style: TextStyle(color: Color.fromRGBO(0, 255, 0, 1)),
                      ),
                      Text(
                        "Black",
                        style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                      )
                    ],
                  )
                ],
              )),
            ),
          )),
    );
  }
}
