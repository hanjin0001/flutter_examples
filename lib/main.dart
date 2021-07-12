import 'package:flutter/material.dart';
import 'package:flutter_examples/bottom_navigation/bottom_navigation.dart';
import 'package:tuple/tuple.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    "";
    "";
    "new feature";
    return MaterialApp(
      title: 'Flutter Examples',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  "dev";
  "new one";
  final _itemSource = [
    Tuple2("Bottom Navigation", ()=> BottomNavigation())
  ];

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample List")),
      body: ListView.builder(
        itemCount: _itemSource.length,
        itemBuilder: (context, index){
          return Container(
            height: 50,
            child: Card(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => _itemSource[index].item2()),
                  );
                },
                child: Center(
                  child: Text(_itemSource[index].item1)
                ),
              ),
            ),
          );
        },
      )
    );
  }
}

