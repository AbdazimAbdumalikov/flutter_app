import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List todoList = [];

  @override
  void initState() {
    super.initState();

    todoList.addAll(['Купить воду', 'Сделать домашку', 'Играть Cs go', 'Ложиться спать']);
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
        body: ListView.builder(
        itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todoList[index]),
                child: ListTile(title: (todoList[index])),
            );
          }
      ),
    );
  }
}
