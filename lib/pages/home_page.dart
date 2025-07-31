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
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
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
        ),
        body: Center(
          child: Text(
            'Welcome to the Home Page',
            style: TextStyle(fontSize: 24),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
