import 'package:flutter/material.dart';
import 'package:zoom_menu/zoom_scaffold.dart';

final settingsScreen = new Screen(
  title: 'SETTINGS',
  background: new DecorationImage(
    image: new AssetImage('assets/main.jpg'),
    fit: BoxFit.cover,
    colorFilter: new ColorFilter.mode(const Color(0xCC000000), BlendMode.multiply),
  ),
  contentBuilder: (BuildContext context) {
    return new Center(
      child: new Container(
        height: 300.0,
        child: new Padding(
          padding: const EdgeInsets.all(25.0),
          child: new Card(
            child: new Column(
              children: [
                new Image.asset('assets/studying.jpg'),
                new Expanded(
                  child: new Center(
                    child: new Text('This is another screen!')
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
);