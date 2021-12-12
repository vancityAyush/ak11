import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/images/user.jpg",
                ),
              ),
              Text(
                "Ayush Kumar",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "ANDROID DEVELOPER",
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              GestureDetector(
                onTap: () => launch("tel://9060842579"),
                child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+91 9060842579",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20,
                          fontFamily: "SourceSansPro"),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launch("mailto:eliasakeleven@gmail.com"),
                child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "eliasakeleven@gmail.com",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20,
                          fontFamily: "SourceSansPro"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
