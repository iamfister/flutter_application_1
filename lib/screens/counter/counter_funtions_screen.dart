import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    var clickString = 'Click${ clickCounter == 1 ? '' : 's'}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Funtions'),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_outlined)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text(clickString, style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(Icons.refresh_outlined),
          SizedBox(height: 15,),
          CustomButton(Icons.plus_one),
          SizedBox(height: 15,),
          CustomButton(Icons.exposure_minus_1)
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;

  const CustomButton(
    this.icon,
  {
    super.key,
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}

int test(int clickCounter) {
  clickCounter++;

  return clickCounter;
}