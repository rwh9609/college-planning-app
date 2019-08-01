import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoom_menu/zoom_scaffold.dart';

final coursesScreen = new Screen(
  title: 'MODIFY COURSES',
  background: new DecorationImage(
    image: new AssetImage('assets/main.jpg'),
    fit: BoxFit.cover,
    colorFilter: new ColorFilter.mode(const Color(0xCC000000), BlendMode.multiply),
  ),
  contentBuilder: (BuildContext context) {
    return new ListView(
      children: [
        new Container(
        height: 200.0,
        color: Theme.of(context).primaryColor,
        child: new Padding(
          padding: const EdgeInsets.all(25.0),
          child: new Card(
            child: new Column(
              children: [
                new RaisedButton(
                  child: const Text('Read'),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  elevation: 4.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    _addCourse();
                  }
                ),
              ],
            ),
          ),
        ),
      ),
      new Container(
        height: 200.0,
        child: new Padding(
          padding: const EdgeInsets.all(25.0),
          child: new Card(
            child: new Column(
              children: [
                new RaisedButton(
                  child: const Text('Save'),
                  color: Theme.of(context).primaryColorDark,
                  textColor: Colors.white,
                  elevation: 4.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    _valueCourse();
                  }
                ),
              ]
              )
              )
        )
      ),

      ]
    );
  }
);


_addCourse() async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'my_int_key';
  final value = prefs.getString(key) ?? '';
  print('read: $value');
}

_valueCourse() async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'my_int_key';
  final value = 'math';
  prefs.setString(key, value);
  print('saved $value');
}