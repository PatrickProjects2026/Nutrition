import 'package:nutrition/about.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/view_data.dart';
import 'package:nutrition/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Threats());
}

class Arguments {
  final String name;

  Arguments(this.name);
}

class Threats extends StatelessWidget {
  const Threats({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String name_ = '';

    return MaterialApp(
      routes: {'/view_': (context) => const View_Data()},
      // onGenerateRoute: (settings) => View_Data(settings),
      title: 'Systemz ',
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
      home: const MyHomePage(title: 'Systemz'),
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
              Container(
                  width: 270, // Set the width of the container
                  height: 350,
                  child: ListView.builder(
                    itemCount: remedies.length,
                    itemBuilder: (context, index) {
                      final remedy = remedies[index];
                      return Column(children: [
                        cont1(context, remedy['pic'], remedy['name'],
                            remedy['descr'], remedy['list']),
                        Text("")
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

Widget cont1(context, pic_, name_, descr_, list_) {
  return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) {
        //           return const View_Data();
        //         },
        //         settings: RouteSettings(arguments: {'name': text_})));
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) {
        //       return View_Data();
        //     },
        //     settings: RouteSettings(arguments: {'name': text_})));
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const View_Data(),
        //         settings: RouteSettings(arguments: {'name': 'zanto'})));

        Navigator.pushNamed(context, '/view_', arguments: {
          'pic': pic_,
          'name': name_,
          'descr': descr_,
          'list': list_
        });
      },
      child: Container(
          width: 270, // Set the width of the container
          height: 80, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Color.fromARGB(255, 139, 21, 12), // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Text(" "),
              ClipOval(
                child: Image.asset(
                  'assets/$pic_',
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Text(
                ' ${name_}',
                style: TextStyle(fontSize: 23.0, color: Colors.white),
              ),
              Spacer(),
              // btn(context),
              // Spacer(),
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

// Readme
// Systems & Threats bug_report
// Organs & Remedies  remove_red_eye spa

List<Map<String, dynamic>> remedies = [
  {
    'pic': 'threat.png',
    'name': 'Appendicitis',
    'descr': 'Inflammation of the appendix',
    'list': 'appendix'
  },
  {
    'pic': 'threat.png',
    'name': 'Arthritis',
    'descr': 'Disease causing inflammation of the joints',
    'list': 'joints'
  },
  {
    'pic': 'threat.png',
    'name': 'Bronchitis',
    'descr': 'Inflammation of the mucous membrane in the bronchial tubes',
    'list': 'bronchial tubes,windpipe'
  },
  {
    'pic': 'threat.png',
    'name': 'colitis',
    'descr': 'inflammation of the lining of the colon',
    'list': 'colon'
  },
  {
    'pic': 'threat.png',
    'name': 'conjunctivitis',
    'descr':
        'inflammation of the conjunctiva, the mucous membrane that covers the front of the eye',
    'list': 'conjunctiva'
  },
  {
    'pic': 'threat.png',
    'name': 'cystitis',
    'descr': 'inflammation of the urinary bladder',
    'list': 'bladder'
  },
  {
    'pic': 'threat.png',
    'name': 'dermatitis',
    'descr': 'inflammatory condition of the skin',
    'list': 'skin'
  },
  {
    'pic': 'threat.png',
    'name': 'encephalitis',
    'descr': 'inflammation of the brain',
    'list': 'brain'
  },
  {
    'pic': 'threat.png',
    'name': 'gastritis',
    'descr': 'inflammation of the lining of the stomach',
    'list': 'stomach,liver'
  },
  {
    'pic': 'threat.png',
    'name': 'mastitis',
    'descr': 'inflammation of the mammary gland in the breast or udder',
    'list': 'breast,udder'
  },
  {
    'pic': 'threat.png',
    'name': 'meningitis',
    'descr': 'inflammation of the meninges, the membranes that line the skull',
    'list': 'skull,membrane'
  },
  {
    'pic': 'threat.png',
    'name': 'poliomyelitis',
    'descr': 'an infectious viral disease that can cause paralysis',
    'list': 'paralysis'
  },
  {
    'pic': 'threat.png',
    'name': 'Iritis ',
    'descr': 'Iritis is an inflammation of the iris',
    'list': 'iris'
  },
  {
    'pic': 'threat.png',
    'name': 'Nephritis',
    'descr': 'Nephritis is an inflammation of the kidneys.',
    'list': 'kidneys'
  },
  {
    'pic': 'threat.png',
    'name': 'Pancreatitis',
    'descr': 'Pancreatitis is an inflammation of the pancreas',
    'list': 'pancreas'
  },
  {
    'pic': 'threat.png',
    'name': 'Retinitis',
    'descr': 'Retinitis is an inflammation of the retina',
    'list': 'retina'
  },
  {
    'pic': 'threat.png',
    'name': 'Tonsillitis',
    'descr': 'Tonsillitis is an inflammation of the tonsils',
    'list': 'tonsils'
  },
  {
    'pic': 'threat.png',
    'name': 'Ulcerative colitis',
    'descr': 'Ulcerative colitis is an inflammation of the colon',
    'list': 'colon'
  },
  {
    'pic': 'threat.png',
    'name': 'Uveitis',
    'descr':
        'Uveitis is an inflammation of the uvea,the middle layer of the eye',
    'list': 'uvea,eye'
  },
  {
    'pic': 'threat.png',
    'name': 'Rephritis',
    'descr':
        'Acute interstitial nephritis- decreased kidney function, swelling, and other.diagnosed through urine tests, blood tests, and imaging studies',
    'list': 'kidney'
  },
  {
    'pic': 'threat.png',
    'name': 'Adrenalitis',
    'descr': 'Inflammation of the adrenal glands',
    'list': 'adrenal glands'
  },
  {
    'pic': 'threat.png',
    'name': 'Stomatitis',
    'descr': 'Aphthous stomatitis: Recurrent sores in the mouth',
    'list': 'mouth'
  },
  {
    'pic': 'threat.png',
    'name': 'Otitis',
    'descr': 'Aspergillus otitis externa: Fungal infection of the ear canal',
    'list': 'ear,canal'
  },
  {
    'pic': 'threat.png',
    'name': 'Dermatitis',
    'descr':
        'Atopic dermatitis: A chronic skin condition marked by itchy, red, dry skin',
    'list': 'dry skin'
  },
  {
    'pic': 'threat.png',
    'name': 'Endocarditis',
    'descr':
        'Bartonella endocarditis: A bacterial infection of the hearts inner lining',
    'list': 'heart'
  },
  {
    'pic': 'threat.png',
    'name': 'Behçets disease',
    'descr':
        'A rare autoimmune disorder that causes inflammation in the blood vessels',
    'list': 'blood vessels'
  },
  {
    'pic': 'threat.png',
    'name': 'Cystic fibrosis',
    'descr':
        'A genetic disorder that causes buildup of thick mucus in the lungs',
    'list': 'lungs'
  },
  {
    'pic': 'threat.png',
    'name': 'Osteoporosis',
    'descr': 'A condition that causes the bones to become thin and weak',
    'list': 'bones'
  },
  {
    'pic': 'threat.png',
    'name': 'Tendinitis',
    'descr': 'Inflammation of a tendon, usually caused by overuse',
    'list': 'tendon'
  },
  {
    'pic': 'threat.png',
    'name': 'Sclerosis',
    'descr': 'The hardening or scarring of tissue',
    'list': 'tissue'
  },
  {
    'pic': 'threat.png',
    'name': 'Lymphadenitis',
    'descr': 'Lymphadenitis: Inflammation of a lymph node',
    'list': 'lymph node'
  },
  {
    'pic': 'threat.png',
    'name': 'Lymphangitis',
    'descr': 'Lymphangitis: Inflammation of the lymphatic vessels',
    'list': 'lymphatic vessels'
  },
  {
    'pic': 'threat.png',
    'name': 'Diabetes mellitus',
    'descr': 'A chronic condition that results in too much sugar in the blood.',
    'list': 'blood'
  },
  {
    'pic': 'threat.png',
    'name': 'Epilepsy',
    'descr': 'A neurological disorder that causes seizures',
    'list': 'seizures'
  },
  {
    'pic': 'threat.png',
    'name': 'Gangrene',
    'descr': 'Gangrene: Tissue death due to lack of blood flow',
    'list': 'blood flow'
  },
  {
    'pic': 'threat.png',
    'name': 'Psoriasis',
    'descr':
        'A chronic skin condition that causes itchy, scaly patches on the skin',
    'list': 'skin'
  },
  {
    'pic': 'threat.png',
    'name': 'Endometriosis',
    'descr':
        'A condition in which tissue that normally lines the inside of the uterus grows outside of it',
    'list': 'uterus'
  },
  {
    'pic': 'threat.png',
    'name': 'Uterine fibroids',
    'descr': 'Noncancerous growths that develop in the uterus',
    'list': 'uterus'
  },
  {
    'pic': 'threat.png',
    'name': 'Tinnitus',
    'descr':
        'A condition that causes ringing, buzzing, or other noises in the ears',
    'list': 'ears'
  },
  {
    'pic': 'threat.png',
    'name': 'Otosclerosis',
    'descr':
        'A condition that causes stiffening of the tiny bones in the middle ear',
    'list': 'ear'
  },
  {
    'pic': 'threat.png',
    'name': 'Psoriasis',
    'descr': 'Psoriasis: A chronic, inflammatory skin condition.',
    'list': 'skin'
  },
  {
    'pic': 'threat.png',
    'name': 'Endometriosis',
    'descr': ' A gynecological condition that causes pelvic pain',
    'list': 'pelvic pain'
  },
  {
    'pic': 'threat.png',
    'name': 'Uterine fibroids',
    'descr': 'Benign tumors that can cause pain and heavy bleeding',
    'list': 'bleeding'
  },
  {
    'pic': 'threat.png',
    'name': 'Tinnitus',
    'descr': 'A condition characterized by ringing in the ears',
    'list': 'ears'
  },
  {
    'pic': 'threat.png',
    'name': 'Otosclerosis',
    'descr': 'A condition that affects hearing and balance',
    'list': 'hearing'
  },
  {
    'pic': 'threat.png',
    'name': 'Atherosclerosis',
    'descr': 'Atherosclerosis: The hardening and narrowing of the arteries',
    'list': 'arteries'
  },
  {
    'pic': 'threat.png',
    'name': 'Dermatomyositis',
    'descr': 'A rare inflammatory disease that affects the skin and muscles',
    'list': 'skin,muscles'
  },
  {
    'pic': 'threat.png',
    'name': 'Myasthenia gravis',
    'descr':
        'Myasthenia gravis: A disorder that causes muscle weakness and fatigue',
    'list': 'weakness,fatigue'
  },
  {
    'pic': 'threat.png',
    'name': 'Dialysis',
    'descr':
        'A medical procedure used to clean the blood when the kidneys are not working properly',
    'list': 'kidneys'
  },
  {
    'pic': 'threat.png',
    'name': 'Anisakiasis',
    'descr': 'A parasitic infection that can cause abdominal pain and nausea',
    'list': 'pain,nausea'
  },
  {
    'pic': 'threat.png',
    'name': 'Scurvy',
    'descr': 'A nutritional disease caused by a lack of vitamin C',
    'list': 'vitamin C'
  },
  {
    'pic': 'threat.png',
    'name': 'Kawasaki disease',
    'descr':
        'A rare childhood disease that causes inflammation of the blood vessels',
    'list': 'blood vessels'
  },
  {
    'pic': 'threat.png',
    'name': 'Haemochromatosis',
    'descr': 'A genetic disorder that causes the body to absorb too much iron',
    'list': 'iron'
  },
  {
    'pic': 'threat.png',
    'name': 'Lymphoma',
    'descr': 'A type of cancer that starts in the lymphatic system.',
    'list': 'lymphatic system'
  },
  {
    'pic': 'threat.png',
    'name': 'Shingles',
    'descr': 'A viral infection that causes a painful rash',
    'list': 'rash,skin'
  },
  {
    'pic': 'threat.png',
    'name': 'Phenomenon',
    'descr':
        'Raynauds phenomenon,condition in which the blood vessels in the fingers and toes constrict in response to cold temperatures or stress, causing the affected areas to turn white or blue.',
    'list': 'blood vessels'
  }
];
