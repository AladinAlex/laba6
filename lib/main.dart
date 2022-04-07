// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MainScreen(),));
}


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  // final result;

  @override
  Widget build (BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(title: const Text('Лабораторная работа №6, окно 1'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async{
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
              final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
              ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text("$result"), backgroundColor: Colors.blueAccent,));
            },
            child: const Text('Перейти на 2-е окно'),
          ),
        )
      );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(title: const Text('Лабораторная работа №6, окно 2'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, 'Да');
                },
                child: const Text('Да'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, 'Нет');
                },
                child: const Text('Нет'),
              ),
            ],
          ),
        )
    );
  }
}
