import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //void signOut(BuildContext context) {}
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
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                Navigator.pushNamed(context, '/massage');
              },
            ),
          ],
          iconTheme: IconThemeData(
            color: Colors.black, // Change icon color to white
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(thickness: 10, height: 10, color: Colors.grey[300]),
              // Expanded(
              //   child: Center(
              //     child: ElevatedButton.icon(
              //       onPressed: () => signOut(context),
              //       label: Text("Sign out"),
              //       icon: Icon(Icons.logout),
              //     ),
              //   ),
              // ),
              
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'My Network',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add_rounded),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge_outlined),
              label: 'Jobs',
            ),
          ],
          currentIndex: _selectedIndex, // track current index in state
          onTap: _onItemTapped, // handle tab change
          selectedItemColor: Colors.black, // color for selected item
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
