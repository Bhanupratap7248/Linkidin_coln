import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // 👈 goes back
            },
          ),
          

          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                // Handle messages
              },
            ),
          ],
          iconTheme: IconThemeData(
            color: Colors.black, // Change icon color to white
          ),
        ),

        body: Center(
          child: Text(
            'Welcome to the Home Page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
