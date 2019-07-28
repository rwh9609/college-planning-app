import 'package:flutter/material.dart';
import 'package:zoom_menu/menu_screen.dart';
import 'package:zoom_menu/zoom_scaffold.dart';
import 'package:zoom_menu/home_screen.dart';
import 'package:zoom_menu/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Planner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'College Planner Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final menu = new Menu(
    items: [
      new MenuItem(
        id: 'home',
        title: 'HOME',
      ),
      new MenuItem(
        id: 'courses',
        title: 'ADD A COURSE',
      ),
      new MenuItem(
        id: 'settings',
        title: 'SETTINGS',
      ),
      new MenuItem(
        id: 'tips',
        title: 'STUDY TIPS',
      ),
    ],
  );

  var selectedMenuItemId = 'home';
  var activeScreen = homeScreen;

  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: new MenuScreen(
        menu: menu,
        selectedItemId: selectedMenuItemId,
        onMenuItemSelected: (String itemId) {
          selectedMenuItemId = itemId;
          if (itemId == 'home') {
            setState(() => activeScreen = homeScreen);
          } else {
            setState(() => activeScreen = settingsScreen);
          }
        },
      ),
      contentScreen: activeScreen,
    );
  } // Widget Build
} // Class _MyHomePageState

