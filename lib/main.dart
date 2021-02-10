import 'package:flutter/material.dart';
import 'package:testapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("My Business Card"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/shubhra_image.jpg'),
                  // NetworkImage(
                  //     "https://media-exp1.licdn.com/dms/image/C4E03AQHU55q_xEWvlA/profile-displayphoto-shrink_200_200/0/1608654186296?e=1618444800&v=beta&t=kbJtDS58TL9ccUeNqVAlsSTh1TD8WFiJ2U_QgBAtZQQ"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Shubhra Rao Kuthyar",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                      fontSize: 26.0,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 10.0),
              Text("XYZ Company",
                  style: TextStyle(fontSize: 24.0, color: Colors.white)),
              SizedBox(height: 20.0),

              //Phone Number
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Colors.white,
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text("+91 9123123123",
                        style: TextStyle(fontSize: 16.0))),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text("myemail@gmail.com")
                )
              ),

              RaisedButton(
                onPressed: () {
                  print("Pressed!");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text("Know more"),
              )
            ]),

            
           
      ),
    );
  }
}
