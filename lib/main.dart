import 'package:flutter/material.dart';
import 'drawer.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    //title: "Belajar Flutter",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbord"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
            Colors.red,
            Colors.blue
          ])),
        ),
      ),

      //kurang background
      drawer: DrawerWidget(),
      body: Center(child: Text('WELCOME MY PROFILE', style: TextStyle(fontSize: 20))),
    );
  }
}
