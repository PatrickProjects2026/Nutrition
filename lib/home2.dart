import 'package:nutrition/about.dart';
import 'package:nutrition/home.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/organs.dart';
import 'package:nutrition/page1.dart';
import 'package:nutrition/remedies.dart';
import 'package:nutrition/systemz.dart';
import 'package:nutrition/threats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home2());
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back3.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Text(""),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 139, 21, 12), // background
                  onPrimary: Colors.white, // foreground
                ),
                icon: Icon(
                  Icons.home,
                  size: 17,
                ),
                label: const Text(
                  'HOME',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              Spacer(),
              Text(""),
              Row(
                children: [
                  Spacer(),
                  cont1(context),
                  Text(" "),
                  cont2(context),
                  Spacer()
                ],
              ),
              Text(""),
              Row(
                children: [
                  Spacer(),
                  cont3(context),
                  Text(" "),
                  cont4(context),
                  Spacer()
                ],
              ),
              Spacer(),
              Text(""),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 139, 21, 12), // background
                  onPrimary: Colors.white, // foreground
                ),
                icon: Icon(
                  Icons.home,
                  size: 17,
                ),
                label: const Text(
                  'Version 2.4',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              Text("")
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Systemz()),
        );
      },
      child: Container(
          width: 150, // Set the width of the container
          height: 100, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Color.fromARGB(255, 139, 21, 12), // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Spacer(),
              Icon(Icons.accessible, color: Colors.white),
              Text(
                ' SYSTEMS',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Spacer(),
            ],
          )));
}

Widget cont2(context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Threats()),
        );
      },
      child: Container(
          width: 150, // Set the width of the container
          height: 100, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Color.fromARGB(255, 139, 21, 12), // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Spacer(),
              Icon(Icons.bug_report, color: Colors.white),
              Text(
                ' THREATS',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Spacer(),
            ],
          )));
}

Widget cont3(context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Organs()),
        );
      },
      child: Container(
          width: 150, // Set the width of the container
          height: 100, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Color.fromARGB(255, 139, 21, 12), // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Spacer(),
              Icon(Icons.remove_red_eye, color: Colors.white),
              Text(
                ' ORGANS',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Spacer(),
            ],
          )));
}

Widget cont4(context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const About()),
        );
      },
      child: Container(
          width: 150, // Set the width of the container
          height: 100, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Color.fromARGB(255, 139, 21, 12), // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Spacer(),
              Icon(Icons.brightness_5, color: Colors.white),
              Text(
                ' SETTINGS',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Spacer(),
            ],
          )));
}

Widget btn(context) {
  return Container(
    width: 50, // Set the width of the container
    // height: 0, // Set the height of the container
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 12, 12, 12), // Set the background color
      borderRadius: BorderRadius.circular(
          20.0), // Set the border radius to make corners rounded
    ),
    child: Text(
      '  VIEW',
      style: TextStyle(fontSize: 13.0, color: Colors.white),
    ),
  );
}

List<Map<String, dynamic>> systemz = [
  {'pic': 'back3.jpg', 'name': 'Alice', 'descr': 'mask', 'list': 'mi,oio'},
  {'pic': 'back3.jpg', 'name': 'Alice', 'descr': 'mask', 'list': 'mi,oio'},
];
