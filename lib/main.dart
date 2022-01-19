import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Grid View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> _items = List.generate(
    200,
      (index)=>{
      'id': index,
        'title' : "Item $index",
        'height' : Random().nextInt(150)+50.5,
      }
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Staggered Grid View', style: TextStyle(fontFamily: 'Pacifico', color: Colors.white),),
        centerTitle: true,
      ),
      body: MasonryGridView.count(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          crossAxisCount: 5,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: _items.length,
        itemBuilder: (context, index){
          return Card(
            color: Color.fromARGB(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
            ),
            key: ValueKey(_items[index]['id']),
            child: SizedBox(
              height: _items[index]['height'],
              child: Center(
                child: Text(_items[index]['title']),
              ),
            ),
          );
        }
      ),
    );
  }
}