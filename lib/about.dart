import 'package:nutrition/home2.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const About());
}

class About extends StatelessWidget {
  const About({super.key});

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
                image: AssetImage("assets/back2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Text(""),
              Text(""),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page1()),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/round.gif',
                      fit: BoxFit.cover,
                      width: 150.0,
                      height: 150.0,
                    ),
                  )),
              Text(
                ' Contact Name',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' name@gmail.com',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Text(
                ' 23 main street Address 251',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              Text(""),
              header(context),
              Text(""),
              Spacer(),
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
                    MaterialPageRoute(builder: (context) => Home2()),
                  );
                },
              ),
              Text("")
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget header(context) {
  return Row(
    children: [
      Spacer(),
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 139, 21, 12), // background
          onPrimary: Colors.white, // foreground
        ),
        icon: Icon(
          Icons.call,
          size: 17,
        ),
        label: const Text(
          'CALL',
          style: TextStyle(fontSize: 13.0, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => About()),
          );
        },
      ),
      Text(" "),
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 139, 21, 12), // background
          onPrimary: Colors.white, // foreground
        ),
        icon: Icon(
          Icons.email,
          size: 17,
        ),
        label: const Text(
          'EMAIL',
          style: TextStyle(fontSize: 13.0, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => About()),
          );
        },
      ),
      Spacer()
    ],
  );
}
