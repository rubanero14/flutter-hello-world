import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hello World")),
      body:Center(child:
      Column(
        children: [
          SizedBox(height: 8,),
          Text(
              "Welcome to my app",
              style: TextStyle(color: Colors.blue, fontSize: 20 )),
          SizedBox(height: 8,),
          Image.network('https://i1.wp.com/anitrendz.net/news/wp-content/uploads/2020/02/MV5BYzdlZGM2YmEtZWU3NC00MDZmLThmOTYtMGFjYzYwMGIyNjZiXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_.jpg'),
          SizedBox(height: 8,),
          Text("I hope you like my app", style: TextStyle(color:Colors.deepOrange, fontSize: 16)),
          SizedBox(height: 8,),
          Text("This is my first Flutter app"),
          TextButton(
              onPressed:(){
                Fluttertoast.showToast(
                    msg: "Hello, Welcome to my app",
                    toastLength: Toast.LENGTH_SHORT,
                    backgroundColor: Colors.deepPurple,
                );
              },
              child: Text("Press me"))
        ],
      )),
    );
  }
}
