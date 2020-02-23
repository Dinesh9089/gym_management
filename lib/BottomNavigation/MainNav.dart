import 'package:flutter/material.dart';
import 'package:smartGym/CategorySelection.dart';
import 'package:smartGym/BarCode/mainBarCode.dart';
import 'package:smartGym/Settings/screens/settings_screen.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Bottom Navigation",
      // Home
      home: MainNav()));
}

class MainNav extends StatefulWidget {
  @override
  MainNavState createState() => MainNavState();
}

// SingleTickerProviderStateMixin is used for animation
class MainNavState extends State<MainNav> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Smart Gym Manager"),

        // Set the background color of the App Bar
        backgroundColor: Colors.redAccent,

        // icon: new Image(image: AssetImage('assets/images/fitness.png'))
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[CategorySelection(), BarCode(), SettingsScreen()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.redAccent,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.category),
            ),
            Tab(
              icon: Icon(Icons.scanner),
            ),
            Tab(
              icon: Icon(Icons.supervised_user_circle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
