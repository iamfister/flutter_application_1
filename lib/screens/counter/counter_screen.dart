import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Clicks', style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: test,
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

void test() {

}