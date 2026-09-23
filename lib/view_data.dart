import 'package:nutrition/about.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const View_Data());
}

String f_pic = "";
String f_name = "";
String f_descr = "";
String f_list = "";

class View_Data extends StatelessWidget {
  const View_Data({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    f_pic = args['pic'];
    f_name = args['name'];
    f_descr = args['descr'];
    f_list = args['list'];

    return MaterialApp(
      title: 'View ',
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
      home: const MyHomePage(title: 'View'),
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

    // final String name_=th
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // final args = ModalRoute.of(context)?.settings.arguments;
    // print(args.toString());

    // print(f_name);

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
              Container(
                  width: 270, // Set the width of the container
                  height: 350,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Text(f_name,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Color.fromARGB(255, 139, 21, 12),
                                fontWeight: FontWeight.bold)),
                        Text(""),
                        cont1(context, f_pic, f_descr, f_list),
                      ]);
                    },
                  )),
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
                  'Version 2.4',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page1()),
                  );
                },
              ),
              Text("")
            ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context, pic_, descr_, list_) {
  final List<String> items = sliceData(list_);
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const About()),
        );
      },
      child: Column(children: [
        Container(
            width: 270, // Set the width of the container
            height: 300,
            padding: EdgeInsets.all(6.0), // Set the height of the container
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
              color:
                  Color.fromARGB(255, 139, 21, 12), // Set the background color
              borderRadius: BorderRadius.circular(
                  20.0), // Set the border radius to make corners rounded
            ),
            child: Column(children: [
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/$pic_'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Text(descr_,
                  style: TextStyle(fontSize: 13.0, color: Colors.white))
            ])),
        Container(
            height: 200,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                        (index + 1).toString()), // Display item index as bullet
                  ),
                  title: Text(items[index],
                      style: TextStyle(
                          color: Color.fromARGB(255, 139, 21, 12),
                          fontWeight: FontWeight.bold)),
                );
              },
            ))
      ]));
}

List<String> sliceData(String data) {
  // Split the string by commas
  List<String> dataList = data.split(',');

  // Trim each element to remove leading and trailing whitespace
  dataList = dataList.map((e) => e.trim()).toList();

  return dataList;
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
