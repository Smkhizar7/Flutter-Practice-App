import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.amberAccent,
                child: const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
                child: const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Center(
              child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          )),
        ],
      ),
    );
  }
}
