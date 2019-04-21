import 'package:flutter/material.dart';
import 'package:studyjam/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var spacer = Container(
      height: 40.0,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter app',
          ),
        ),
        body: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: <Widget>[
              spacer,
              FlutterLogo(
                size: 100.0,
              ),
              spacer,
              Text(
                'Welcome to Flutter Study Jam',
                style: textTheme.headline,
                softWrap: false,
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildMenuItem(Icons.info_outline, Colors.deepOrange, 'Info'),
                  buildMenuItem(Icons.image, Colors.yellow, 'Galery')
                ],
              ),
              spacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildMenuItem(Icons.calendar_today, Colors.blue, 'Kalender'),
                  buildMenuItem(Icons.call, Colors.green, 'Panggilan')
                ],
              ),
              spacer,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ListPage()));
          },
        ));
  }

  Column buildMenuItem(IconData icon, Color background, String info) {
    return Column(
      children: <Widget>[
        roundIcon(icon, background),
        Container(
          height: 8.0,
        ),
        Text(info),
      ],
    );
  }

  Container roundIcon(IconData icon, Color background) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 40.0,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: background,
      ),
    );
  }
}
