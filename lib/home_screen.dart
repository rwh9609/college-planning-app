import 'package:flutter/material.dart';
import 'package:zoom_menu/zoom_scaffold.dart';

final Screen homeScreen = new Screen(
    title: 'The College Planner',
    background: new DecorationImage(
      image: new AssetImage('assets/main.jpg'),
      fit: BoxFit.cover,
    ),
    contentBuilder: (BuildContext context) {
      return new ListView(
        children: [
          new Container(
            height: 20.0,
          ),
          new Card(
              elevation: 10.0,
              child: new Column(children: [
                new Text(
                  'Add a Task',
                  style: new TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ])),
          new Card(
              elevation: 10.0,
              child: new Column(children: [
                new Text(
                  'Grade Check',
                  style: new TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ])),
          new Container(
              height: 300.0,
              child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildItems(index);
                  })),
          new Card(
              elevation: 10.0,
              child: new Column(children: [
                new Image.asset(
                  'assets/studying.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
              ])),
        ],
      );
    });


Widget _buildItems(int index) {
  return new Container(
    // color: Colors.blue,
    padding: const EdgeInsets.all(5.0),
    child: new Row(
      children: [
        new Row(children: [
          new RaisedButton(
            padding: const EdgeInsets.all(100.0),
            highlightColor: Colors.white,
            child: new Text("Day $index of the week"),
            onPressed: () {},
          ),
        ])
      ],
    ),
  );
}
