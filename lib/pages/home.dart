import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_practice/model.dart';import 'package:my_practice/model.dart';
import 'package:my_practice/pages/home.dart';
import 'package:http/http.dart';
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get http => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
              height: 130,
              color: Colors.greenAccent,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User id:data',
                      style: TextStyle(
                        fontSize: 18,
                      )),Text('id:data',
                      style: TextStyle(
                        fontSize: 18,
                      )),Text('Title:data',
                      style: TextStyle(
                        fontSize: 18,
                      )),Text('body:data',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ],
              ),
          );
        },
      ),
    );
  }
  Future<List<Welcome>> getData() async{
    final respons=await http.get('Uri.parse("https://jsonplaceholder.typicode.com/posts');
  }
}


