import 'package:nutrition/about.dart';
import 'package:nutrition/main.dart';
// import 'package:nutrition/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Page1());
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASI',
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
      home: const MyHomePage(title: 'ASI'),
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
              Text(''),
              header(context),
              cont1(context),
              Text(""),
              cont2(context),
              Text(""),
              cont0(context),
              Spacer(),
              menu(context),
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
      Text(
        '  ASSISTANT',
        style: TextStyle(fontSize: 23.0, color: Colors.white),
      ),
      Spacer(),
      ClipOval(
        child: Image.asset(
          'assets/round.gif',
          fit: BoxFit.cover,
          width: 50.0,
          height: 50.0,
        ),
      ),
      Spacer()
    ],
  );
}

Widget cont1(context) {
  return Container(
      width: 270, // Set the width of the container
      height: 80, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Icon(Icons.home, color: Colors.white),
          Text(
            '  14,2541.21',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
          Spacer(),
          btn(context),
          Spacer(),
        ],
      ));
}

Widget cont0(context) {
  return Row(children: [
    Spacer(),
    Container(
        width: 132, // Set the width of the container
        height: 110, // Set the height of the container
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
          color: Colors.black, // Set the background color
          borderRadius: BorderRadius.circular(
              20.0), // Set the border radius to make corners rounded
        ),
        child: Column(
          children: [
            Row(children: [
              Text(" "),
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Text(
                '  ASSETS',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              )
            ]),
            Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(8.0), // Set the border radius here.
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 117, 115, 115), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Table(
                    border: TableBorder.all(
                      color: const Color.fromARGB(
                          255, 117, 115, 115), // Set the border color here.
                      width: 1.0, // Set the border width.
                      style: BorderStyle.solid,
                    ),
                    // Add borders around the table and cells.
                    children: [
                      table_row2(context),
                      table_row2(context),
                      table_row2(context),
                    ])),
          ],
        )),
    Text("   "),
    Container(
        width: 132, // Set the width of the container
        height: 110, // Set the height of the container
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
          color: Colors
              .black, // Set the background color // Set the background color
          borderRadius: BorderRadius.circular(
              20.0), // Set the border radius to make corners rounded
        ),
        child: Column(
          children: [
            Row(children: [
              Text(" "),
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Text(
                '  LIABLES',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              )
            ]),
            Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(8.0), // Set the border radius here.
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 117, 115, 115), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Table(
                    border: TableBorder.all(
                      color: const Color.fromARGB(
                          255, 117, 115, 115), // Set the border color here.
                      width: 1.0, // Set the border width.
                      style: BorderStyle.solid,
                    ),
                    // Add borders around the table and cells.
                    children: [
                      table_row2(context),
                      table_row2(context),
                      table_row2(context),
                    ])),
          ],
        )),
    Spacer()
  ]);
}

Widget cont2(context) {
  return Container(
      width: 270, // Set the width of the container
      height: 300, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Column(
        children: [
          Row(children: [
            Text("  "),
            Icon(
              Icons.task,
              color: Colors.white,
            ),
            Text(
              ' ROUTINE',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            )
          ]),
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(8.0), // Set the border radius here.
              border: Border.all(
                color: const Color.fromARGB(255, 117, 115, 115), // Border color
                width: 2.0, // Border width
              ),
            ),
            child: Table(
              border: TableBorder.all(
                color: const Color.fromARGB(
                    255, 117, 115, 115), // Set the border color here.
                width: 1.0, // Set the border width.
                style: BorderStyle.solid,
              ),
              // Add borders around the table and cells.
              children: [
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context),
                table_row(context)
              ],
            ),
          ),
        ],
      ));
}

TableRow table_row(context) {
  return TableRow(
    children: [
      TableCell(
        child: Center(
            child: Text('GYM',
                style: TextStyle(fontSize: 15.0, color: Colors.white))),
      ),
      TableCell(
        child: Center(
            child: Text('ROUTINE',
                style: TextStyle(fontSize: 15.0, color: Colors.white))),
      ),
      TableCell(
        child: Center(child: btn(context)),
      ),
    ],
  );
}

TableRow table_row2(context) {
  return TableRow(
    children: [
      TableCell(
        child: Center(
            child: Text('HOUSE',
                style: TextStyle(fontSize: 15.0, color: Colors.white))),
      ),
      TableCell(
        child: Center(child: btn(context)),
      ),
    ],
  );
}

Widget cont3(context) {
  return Container(
      width: 150, // Set the width of the container
      height: 50, // Set the height of the container
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 91, 92, 93), // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Column(
        children: [
          Text(
            '  14,2541.21',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ],
      ));
}

Widget cont4(context) {
  return Container(
      width: 70, // Set the width of the container
      height: 50, // Set the height of the container
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 91, 92, 93), // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Column(
        children: [
          Text(
            '  14,2541.21',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ],
      ));
}

Widget btn(context) {
  return Container(
    width: 50, // Set the width of the container
    // height: 0, // Set the height of the container
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 78, 141, 67), // Set the background color
      borderRadius: BorderRadius.circular(
          20.0), // Set the border radius to make corners rounded
    ),
    child: Text(
      '  VIEW',
      style: TextStyle(fontSize: 13.0, color: Colors.white),
    ),
  );
}

Widget menu(context) {
  return Row(children: [
    Spacer(),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.home,
        size: 17,
      ),
      label: const Text(
        'Tasks',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
    ),
    Text(" "),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.add_home,
        size: 17,
      ),
      onPressed: () {
        // Navigate back to first route when tapped.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
      label: const Text(
        'Meetings',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
    ),
    Text(" "),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.black, // background
        onPrimary: Colors.white, // foreground
      ),
      icon: Icon(
        Icons.add_home,
        size: 17,
      ),
      onPressed: () {
        // Navigate back to first route when tapped.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About()),
        );
      },
      label: const Text(
        'Routine',
        style: TextStyle(fontSize: 13.0, color: Colors.white),
      ),
    ),
    Spacer()
  ]);
}
