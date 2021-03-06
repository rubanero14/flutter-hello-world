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
  //Create me a text editing controller to be linked to the name TextField & I call it nameEditingController
  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hello World")),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child:
          Column(
            children: [
              SizedBox(height: 8,),
              Text(
                  "Welcome to my app",
                  style: TextStyle(color: Colors.blue, fontSize: 30 )),
              SizedBox(height: 8,),
              Image.network('https://i1.wp.com/anitrendz.net/news/wp-content/uploads/2020/02/MV5BYzdlZGM2YmEtZWU3NC00MDZmLThmOTYtMGFjYzYwMGIyNjZiXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_.jpg'),
              SizedBox(height: 8,),
              Text("I hope you like my app", style: TextStyle(color:Colors.deepOrange, fontSize: 20)),
              SizedBox(height: 8,),
              Text("This is my first Flutter app"),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(hintText: "Enter your name"),
                controller: nameEditingController),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(hintText: "Enter your age"),
                    controller: ageEditingController),
              ),
              SizedBox(height: 8,),
              TextButton(
                  onPressed:(){
                    Fluttertoast.showToast(
                        msg: "Hello, Welcome to my app ${nameEditingController.text}, and you are ${ageEditingController.text} years old!",
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.deepPurple,
                    );
                  },
                  child: Text("Press me")),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text("This is left"),
                  SizedBox(width: 10,),
                  Text("This is right")
                ],
              ),
              SizedBox(height: 8,),
            ],
          )),
        ),
      ),
    );
  }
}
