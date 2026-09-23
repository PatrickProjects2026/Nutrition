import 'package:nutrition/about.dart';
import 'package:nutrition/main.dart';
import 'package:nutrition/view_data.dart';
import 'package:nutrition/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Organs());
}

class Arguments {
  final String name;

  Arguments(this.name);
}

class Organs extends StatelessWidget {
  const Organs({super.key});

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
    'pic': 'organ.png',
    'name': 'uterus',
    'descr':
        'foods rich in folate, such as lentils, beans, leafy greens, and citrus fruits, may help support reproductive health.',
    'list': 'beans, citrus, lentils'
  },
  {
    'pic': 'organ.png',
    'name': 'stomach',
    'descr': 'ginger can help soothe an upset stomach',
    'list': 'ginger'
  },
  {
    'pic': 'organ.png',
    'name': 'pancreas',
    'descr':
        'sweet potatoes are a good source of beta-carotene, which the body converts into vitamin A, which is important for pancreatic health',
    'list': 'sweet potatoes'
  },
  {
    'pic': 'organ.png',
    'name': 'kidneys',
    'descr':
        'kidney beans are a good source of fiber, protein, and other nutrients that may help support kidney health.',
    'list': 'kidney beans'
  },
  {
    'pic': 'organ.png',
    'name': 'heart',
    'descr':
        ' tomatoes are a good source of lycopene, an antioxidant that may help protect the heart from damage.',
    'list': 'tomatoes'
  },
  {
    'pic': 'organ.png',
    'name': 'Bones',
    'descr':
        'For the bones, calcium is an essential nutrient for strong bones and can be found in dairy products, leafy greens, and other foods.celery contains vitamin K, which is important for bone health. ',
    'list': '(Celery)'
  },
  {
    'pic': 'organ.png',
    'name': 'Lungs',
    'descr':
        ' For the lungs, grapes are a good source of antioxidants, which may help support lung health.sulfur is a mineral thats essential for healthy lung function. ',
    'list': '(grapes)'
  },
  {
    'pic': 'organ.png',
    'name': 'Ears',
    'descr':
        'For the ears, mushrooms are a good source of selenium, a mineral thats important for ear health.',
    'list': '(mushrooms)'
  },
  {
    'pic': 'organ.png',
    'name': 'Eyes',
    'descr':
        'For the eyes, carrots are a good source of beta-carotene, which the body converts into vitamin A, which is important for eye health.',
    'list': '(carrots)'
  },
  {
    'pic': 'organ.png',
    'name': 'Breasts',
    'descr':
        'citrus fruits like oranges, lemons, and grapefruits are a good source of vitamin C, which may help support breast health.',
    'list': '(citrus)'
  },
  {
    'pic': 'organ.png',
    'name': 'Brain',
    'descr':
        'For the brain, in addition to walnuts, foods like salmon, blueberries, and eggs may also support brain.',
    'list': 'walnuts, salmon, blueberry, eggs'
  },
  {
    'pic': 'organ.png',
    'name': 'Liver',
    'descr':
        'For the liver, foods like leafy greens, garlic, and cruciferous vegetables like broccoli may help support liver health.',
    'list': 'garlic, brocoli'
  },
  {
    'pic': 'organ.png',
    'name': 'prostate gland',
    'descr':
        'zinc is an important mineral for prostate health and can be found in foods like oysters, beef, and pumpkin seeds.',
    'list': 'oysters, pumpkin seeds'
  },
  {
    'pic': 'organ.png',
    'name': 'skin',
    'descr':
        ' For the skin, foods like tomatoes, carrots, and sweet potatoes are rich in antioxidants, which may help protect the skin from damage.',
    'list': 'tomatoes, Carrot'
  },
  {
    'pic': 'organ.png',
    'name': 'hair',
    'descr':
        'For the hair, foods like eggs, almonds, and avocados are a good source of biotin, which may help support healthy hair.',
    'list': 'eggs, almonds, avocados'
  },
  {
    'pic': 'organ.png',
    'name': 'nails',
    'descr':
        'For the nails, foods like spinach, beans, and pumpkin seeds are good sources of iron and biotin, which may help support nail health.',
    'list': 'spinach, beans, pumpkin seeds'
  },
  {
    'pic': 'organ.png',
    'name': 'teeth',
    'descr':
        'For the teeth, calcium-rich foods like dairy products and leafy greens may help keep teeth strong and healthy.',
    'list': 'milk, cheese'
  },
  {
    'pic': 'organ.png',
    'name': 'gums',
    'descr':
        ' For the gums, foods like apples, celery, and carrots can help remove plaque and stimulate the gums.',
    'list': 'apples, celery, carrots'
  },
  {
    'pic': 'organ.png',
    'name': 'mouth',
    'descr':
        'For the mouth, foods like yogurt, green tea, and sugar-free gum may help protect the mouth from bacteria.',
    'list': 'yogurt, green tea'
  },
  {
    'pic': 'organ.png',
    'name': 'blood',
    'descr':
        ' For the blood, beets, grapes, and strawberries are all high in nitrates, which can be converted into nitric oxide in the body and help improve blood flow.',
    'list': 'beets, grapes, strawberry'
  },
  {
    'pic': 'organ.png',
    'name': 'arteries',
    'descr':
        'For the arteries, foods like salmon, garlic, and turmeric may help reduce inflammation and keep the arteries healthy.',
    'list': 'salmon, garlic, turmeric'
  },
  {
    'pic': 'organ.png',
    'name': 'immune system',
    'descr':
        'Foods like citrus fruits, broccoli, and mushrooms are all high in vitamin C and other nutrients that can help boost the immune system.',
    'list': 'citrus,brocoli, mushrooms'
  },
  {
    'pic': 'organ.png',
    'name': 'joints',
    'descr':
        'foods like fatty fish, ginger, and turmeric are all rich in anti-inflammatory compounds that may help protect the joints.',
    'list': 'ginger, turmeric'
  },
  {
    'pic': 'organ.png',
    'name': 'muscles',
    'descr':
        ' For the muscles, foods like lean meats, beans, and sweet potatoes are high in protein and other nutrients that can help build and repair muscle tissue.',
    'list': 'beans, sweet potatoes'
  },
  {
    'pic': 'organ.png',
    'name': 'digestive system',
    'descr':
        'Foods like yogurt, kimchi, and chia seeds are rich in probiotics and other nutrients that can support gut health.',
    'list': 'yogurt, kimchi, chia seeds'
  },
  {
    'pic': 'organ.png',
    'name': 'skin',
    'descr':
        'Avocados, walnuts, and olive oil are all rich in healthy fats that can help keep the skin hydrated and supple.',
    'list': 'Avocado, walnuts, olive oil'
  },
  {
    'pic': 'organ.png',
    'name': 'hair',
    'descr':
        'For the hair, foods like eggs, almonds, and oysters are all rich in biotin and other nutrients that can help keep the hair strong',
    'list': 'eggs, almonds, oysters'
  },
  {
    'pic': 'organ.png',
    'name': 'skin',
    'descr':
        'For the skin, avocados, walnuts, and olive oil are all rich in healthy fats that can help keep the skin hydrated and supple.',
    'list': 'Avocado, walnuts, olive oil'
  },
  {
    'pic': 'organ.png',
    'name': 'hair',
    'descr':
        'For the hair, foods like eggs, almonds, and oysters are all rich in biotin and other nutrients that can help keep the hair strong and healthy.',
    'list': 'eggs, almonds, oysters'
  },
  {
    'pic': 'organ.png',
    'name': 'nails',
    'descr':
        'Foods like spinach, lentils, and pumpkin seeds are high in iron and other nutrients that can help the nails grow strong and healthy.',
    'list': 'spinach, lentils, pumpkin seeds'
  },
  {
    'pic': 'organ.png',
    'name': 'mood',
    'descr':
        'Foods like dark chocolate, blueberries, and walnuts are all rich in antioxidants and other compounds that may help boost mood and reduce stress.',
    'list': 'blueberry, walnuts'
  },
  {
    'pic': 'organ.png',
    'name': 'energy levels',
    'descr':
        'foods like bananas, sweet potatoes, and quinoa are all rich in complex carbohydrates that can help provide long-lasting energy.',
    'list': 'bananas, sweet potatoes, quinoa'
  },
  {
    'pic': 'organ.png',
    'name': 'sleep',
    'descr':
        'For sleep, foods like kiwi, cherries, and milk are all rich in melatonin and other compounds that can help promote restful sleep.',
    'list': 'kiwi, cherry, milk'
  },
  {
    'pic': 'organ.png',
    'name': 'eyes',
    'descr':
        'Foods like carrots, leafy greens, and eggs are rich in lutein and other nutrients that may help protect the eyes from age-related damage.',
    'list': 'carrots, eggs'
  },
  {
    'pic': 'organ.png',
    'name': 'Liver',
    'descr': ' Liver: protein, vitamin A, vitamin B12, iron, and copper.',
    'list': 'beef, chicken liver, beans, lentils, spinach, and quinoa'
  },
  {
    'pic': 'organ.png',
    'name': 'Brain',
    'descr': 'Brain: Omega-3 fatty acids, vitamin B12, vitamin D, and choline',
    'list': 'salmon, tuna, mackerel, beef liver, eggs, and cheese'
  },
  {
    'pic': 'organ.png',
    'name': 'Muscle health',
    'descr':
        'Fonio contains protein and leucine, an amino acid that helps build and repair muscle tissue.',
    'list': 'Fonio flour, Fonio grains, Fonio porridge'
  },
  {
    'pic': 'organ.png',
    'name': 'Cardiovascular sys',
    'descr':
        'Fonio is high in fiber and magnesium, which can help reduce cholesterol and blood pressure.',
    'list': 'Fonio flour, Fonio grains, Fonio porridge'
  },
  {
    'pic': 'organ.png',
    'name': 'Blood sugar',
    'descr': 'Fonios high fiber content can help regulate blood sugar levels.',
    'list': 'Fonio flour, Fonio grains, Fonio porridge)'
  },
  {
    'pic': 'organ.png',
    'name': 'Digestive health',
    'descr':
        'Digestive health: Fonio is easy to digest and may help reduce bloating and gas.',
    'list': 'Fonio flour, Fonio grains, Fonio porridge'
  },
  {
    'pic': 'organ.png',
    'name': 'Digestive system',
    'descr':
        'condurango is beneficial on the digestive system. stimulate the digestive tract and improve the bodys ability to absorb nutrients. Aalso help with stomach ulcers, indigestion, constipation, nausea.',
    'list': '(Condurango)'
  },
  {
    'pic': 'organ.png',
    'name': 'Digestive system',
    'descr':
        'Teocinte is a wild grass native to Mexico and Central America. ancestor of modern maize, or corn. source of vitamins, minerals, and fiber. It may help improve the health of the digestive system, heart, and blood.',
    'list': '(Teocinte)'
  },
  {
    'pic': 'organ.png',
    'name': 'Cardiovascular sys',
    'descr':
        'Lily of the valley may help improve the health of the cardiovascular system. source of vitamins A and C, as well as calcium and iron.',
    'list': 'oranges, red peppers, broccoli, spinach, and beans'
  },
  {
    'pic': 'organ.png',
    'name': 'The thyroid gland',
    'descr':
        'neck, Potassium iodine helps regulate thyroid hormone production and may improve thyroid health.',
    'list':
        'Iodized salt, table salt, sea salt seawater fish cod, halibut, sardines'
  },
  {
    'pic': 'organ.png',
    'name': 'Bones',
    'descr': 'Bones - Nerve system, work with calcium for bones.',
    'list': '(Magnesium)'
  },
  {
    'pic': 'organ.png',
    'name': 'Cleansing',
    'descr':
        'contain 92 of 102 body minerals. Iron. Pottasium. Zinc. Magnesium. Iodine. Bromiun. Calcium. Phosphorus. ',
    'list': 'Irish moss,sea moss)'
  },
  {
    'pic': 'organ.png',
    'name': 'Wound healing',
    'descr':
        'wound healing - wound healing, kill germ, bacteria,virus (Cordonsilo negro)',
    'list': '(Cordonsilo negro)'
  },
  {
    'pic': 'organ.png',
    'name': 'Blood',
    'descr': 'lower blood sugar & rise fat digestion (Projidiosa)',
    'list': '(Projidiosa)'
  },
  {
    'pic': 'organ.png',
    'name': 'Lymphatic sys',
    'descr': 'liver,  Chaparral - Lymphatic, gallbladder, diabetes ',
    'list': '(Burdock root)'
  },
  {
    'pic': 'organ.png',
    'name': 'Kidney',
    'descr': 'Dandelion -Kidney, gallbladder, blood. Calcium (Dandelion)',
    'list': '(Dandelion)'
  },
  {
    'pic': 'organ.png',
    'name': 'Lungs',
    'descr':
        'Elderberry - reduce mucus from respiratory & lungs. Increase urine & induce sweating ',
    'list': '(Elderberry) '
  },
  {
    'pic': 'organ.png',
    'name': 'Skin',
    'descr':
        'Guaco, Cleanse blood, skin, respiratory, iron, Pottasium Phosphate ',
    'list': '(Guaco)'
  },
  {
    'pic': 'organ.png',
    'name': 'The kidneys',
    'descr':
        'Potassium bromide may help to improve kidney function by flushing out toxins and impurities. source of potassium and bromine',
    'list': 'broccoli, spinach, brussels sprouts'
  },
  {
    'pic': 'organ.png',
    'name': 'Bones',
    'descr':
        'Magnesium oxide is a naturally-occurring mineral that can be extracted from rocks like dolomite, magnesite, and periclase.',
    'list': 'magnesium, oxygen, nuts, seeds, grains'
  },
  {
    'pic': 'organ.png',
    'name': 'Bone & teeth',
    'descr':
        'Magnesium florine - from plant , particularly in the leaves and stems of some plants, like spinach and lettuce.source of magnesium and fluorine, which are essential minerals for bone health and teeth.',
    'list': 'tea, wine,spinach, lettuce'
  },
  {
    'pic': 'organ.png',
    'name': 'Iron & blood',
    'descr':
        'Sarsaparilla root - used in traditional medicine for centuries, source of iron, which is essential for the production of red blood cells, and for the delivery of oxygen to all parts of the body.',
    'list': 'Sarsaparilla root'
  },
  {
    'pic': 'organ.png',
    'name': 'Bones and teeth',
    'descr':
        'Calcium Phosphate essential for the growth and maintenance of bones and teeth. also plays a role in nerve function, muscle contraction, and blood clotting.',
    'list': 'milk, cheese, and yogurt'
  },
  {
    'pic': 'organ.png',
    'name': 'Digestive health',
    'descr':
        'used for digestive health, and it has a few properties that can benefit the intestine and liver. contains compounds that can stimulate bowel movements, helpful for constipation.also help reduce inflammation in the intestines, beneficial for people with conditions',
    'list': 'irritable bowel syndrome, Crohns disease'
  },
  {
    'pic': 'organ.png',
    'name': 'Digestive health',
    'descr':
        'Rhubarb root contains compounds called anthraquinones, which can stimulate bowel movements and ease constipation. also help to soothe inflammation in the digestive tract, which can be beneficial for ',
    'list': 'irritable bowel syndrome, ulcerative colitis'
  }
];
