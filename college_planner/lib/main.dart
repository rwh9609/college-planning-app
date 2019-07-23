import 'package:flutter/material.dart';

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
  

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/main.jpg'),
          fit: BoxFit.cover,
        ),
      ),

      child: new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {
              // TODO(randyhartzell): do something for on pressed
            }
          ),

          title: new Text(
            'College Planner',
            style: new TextStyle(
              fontFamily: 'Rock Salt',
              fontSize: 25.0,
            ),
          ),
        ),

        body: new ListView(
          children: [
            new Container(
              height: 20.0,
            ),

            new Card(
              elevation: 10.0,
              child: new Column(
                children: [
                  new Text(
                    'Add a Task',
                    style: new TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                
                ]
              )
            ),


            new Card(
              elevation: 10.0,
              child: new Column(
                children: [
                  new Text(
                    'Grade Check',
                    style: new TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                
                ]
              )
            ),


            new Container(
              height: 300.0,
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildItems(index);
                  }
                )
            ),


            new Card(
              elevation: 10.0,
              child: new Column(
                children: [
                  new Image.asset(
                    'assets/studying.jpg',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                ]
              )
            ),


          ]
        ,)
      ),
    );
  }
}



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
