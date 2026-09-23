import 'package:nutrition/about.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/view_data.dart';
import 'package:nutrition/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Systemz());
}

class Arguments {
  final String name;

  Arguments(this.name);
}

class Systemz extends StatelessWidget {
  const Systemz({super.key});

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
    'pic': 'circulatory.jpg',
    'name': 'Circulatory system',
    'descr': 'Transport blood throughout the body',
    'list': 'hypertension, atherosclerosis, aneurysms, heart attack, stroke'
  },
  {
    'pic': 'Endocrine.jpg',
    'name': 'Endocrine system',
    'descr': 'Regulating hormones',
    'list':
        'diabetes, hyperthyroidism, hypothyroidism, Addisons disease, Cushings syndrome, polycystic ovary syndrome (PCOS)'
  },
  {
    'pic': 'Respiratory.jpg',
    'name': 'Respiratory system',
    'descr':
        'Consists of the airways and lungs that bring oxygen into the body and remove carbon dioxide',
    'list':
        'Pneumonia, asthma, chronic obstructive pulmonary disease (COPD), sleep apnea, cystic fibrosis, Bronchitis: (Bronchial tubes)'
  },
  {
    'pic': 'Digestive.jpg',
    'name': 'Digestive system',
    'descr': 'Breaking down food and absorbing nutrients',
    'list':
        'gastroesophageal reflux disease (GERD), peptic ulcers, irritable bowel syndrome (IBS), Crohns disease, ulcerative colitis, diverticulitis, constipation, diarrhea, abdominal pain,Gastritis:( Stomach),Hepatitis:(liver),Colitis (Large Intestine)'
  },
  {
    'pic': 'Skeletal.jpg',
    'name': 'Skeletal system',
    'descr': 'Consists of the bones and joints of the body',
    'list':
        'Arthritis, osteoporosis, osteoarthritis, tendinitis, bursitis, carpal tunnel syndrome, muscle cramps,Arthritis'
  },
  {
    'pic': 'Nervous.jpg',
    'name': 'Nervous system',
    'descr':
        'Controls all of the bodys activities, including thinking, feeling, and moving.',
    'list':
        'Alzheimers disease, Parkinsons disease, multiple sclerosis, epilepsy, migraine, stroke'
  },
  {
    'pic': 'Lymphatic.jpg',
    'name': 'Lymphatic system',
    'descr': 'Transfer nerve signals',
    'list':
        'lymphedema, lymphadenitis, lymphangitis, Hodgkins lymphoma, non-Hodgkins lymphoma'
  },
  {
    'pic': 'Integumentary.jpg',
    'name': 'Integumentary sys',
    'descr':
        'Protecting the body from the environment, consists of the skin, hair, and nails',
    'list':
        'acne, psoriasis, eczema, fungal infections, warts, basal cell carcinoma, squamous cell carcinoma, melanoma'
  },
  {
    'pic': 'Urinary.jpg',
    'name': 'Urinary system',
    'descr': 'Consists of the bladder and urethra',
    'list':
        'Bladder cancer, prostate cancer, kidney cancer, kidney stones, urinary tract infections (UTIs), urinary incontinence,urinary incontinence, kidney failure'
  },
  {
    'pic': 'Reproductive.jpg',
    'name': 'Reproductive sys',
    'descr':
        'The reproductive system of an organism, also known as the genital system, is the biological system made up of all the anatomical organs involved in sexual reproduction.',
    'list':
        'infertility, endometriosis, uterine fibroids, ovarian cysts, polycystic ovary syndrome (PCOS), pelvic inflammatory disease (PID), sexually transmitted infections (STIs)'
  },
  {
    'pic': 'Sensory.jpg',
    'name': 'Sensory system',
    'descr':
        'The sensory nervous system is a part of the nervous system responsible for processing sensory information',
    'list':
        'blindness, deafness, color blindness, tinnitus, vertigo, smell disorders, taste disorders'
  },
  {
    'pic': 'Auditory.jpg',
    'name': 'Auditory system',
    'descr':
        'The auditory system processes how we hear and understand sounds within the environment.',
    'list':
        'hearing loss, tinnitus, Menieres disease, otosclerosis, Ménières disease'
  },
  {
    'pic': 'Cardiovascular.jpg',
    'name': 'Cardiovascular sys',
    'descr':
        'The circulatory system is a system of organs that includes the heart, blood vessels, and blood which is circulated throughout the entire body of a human or other vertebrate.',
    'list':
        'coronary artery disease, heart attack, angina, atherosclerosis, arrhythmia, congenital heart defects, congestive'
  },
  {
    'pic': 'Excretory.jpg',
    'name': 'Excretory system',
    'descr': 'Removing waste from the body',
    'list':
        'Appendicitis:(Appendix), Inflammation ,Abdominal pain, surgical removal'
  },
  {
    'pic': 'Immune.jpg',
    'name': 'Immune system',
    'descr': 'Protecting the body from infection',
    'list':
        'Addison disease,Celiac disease,Dermatomyositis,Graves disease,Hashimoto thyroiditis,Bowel disease,Multiple sclerosis,Myasthenia gravis,Pernicious anemia,Reactive arthritis,Rheumatoid arthritis,Sjögren syndrome,Lupus erythematosus,Type I diabetes'
  },
  {
    'pic': 'Renal.jpg',
    'name': 'Renal system',
    'descr':
        'Consists of the kidneys, which filter the blood and remove waste products from the body',
    'list':
        'Kidney stones,Polycystic kidney disease,Glomerulonephritis,Alport syndrome,Chronic kidney disease,Dialysis,Hypertension,IgA nephropathy,Cardiorenal syndrome,Fabry disease,Kidney cancer,Lupus nephritis,Urinary tract infection,Acidosis,Acute kidney injury,Kidney disease,Cardiovascular disease,Cystinosis,Diabetes,Glomerulopathy,Interstitial nephritis,Kidney cysts,Acute tubular necrosis,IgA vasculitis'
  },
  {
    'pic': 'Hematologic.jpg',
    'name': 'Hematologic sys',
    'descr':
        'Consists of the blood and blood-forming organs, such as the bone marrow and spleen',
    'list':
        'anemia, bleeding disorders such as hemophilia, blood clots, blood cancers such as leukemia, lymphoma,myeloma'
  },
];
