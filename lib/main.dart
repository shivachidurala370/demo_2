import 'package:demo_2/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return SafeArea(
      child: Scaffold(
        //app bar widget
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "App Bar Title",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body:

            //buttons & navigations
            Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
                child: Text("Text button",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Text("Elevated Button",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
                child: Text("Outlined Button",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 200,
                color: Colors.blue,
                child: Text("Custom Button",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ],
        ),

        // stack widget
        /*Stack(
          children: [
            Center(
              child: Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),*/

        //Image & gridview builder
        /* Column(
          children: [
            Container(
              child: Image.asset(
                'assets/hyd photo.jpg',
                height: 250,
              ),
            ),

            //gridview.builder

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 480,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: 15,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "GridView",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),*/

        /*ListView.separated(itemBuilder: (BuildContext context,int index){
                return Container(
                alignment: Alignment.center,
                height: 80,
                color: Colors.white,
                child: Text("List View"),
                );
              },
            separatorBuilder: (BuildContext context,int index){
                return Container(
                  height: 2,
                  color: Colors.grey,

                );
              }, itemCount: 15),*/

        //listview widget

        /*Column(
          children: [
            Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[700],
                    height: 50,
                    child: Text("Entry A"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[600],
                    height: 50,
                    child: Text("Entry B"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[500],
                    height: 50,
                    child: Text("Entry C"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[400],
                    height: 50,
                    child: Text("Entry D"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[300],
                    height: 50,
                    child: Text("Entry E"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[200],
                    height: 50,
                    child: Text("Entry F"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.amber[100],
                    height: 50,
                    child: Text("Entry G"),
                  ),
                ],
              ),
            ),
          ],
        ),

          //Listview.Separated
          /*ListView.separated(itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 7.0),
              ),

              height: 80,
              width: 160,
              child: Text("Hey....!!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          );
        },
            separatorBuilder: (BuildContext context,int index){
          return Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            height: 20,
            child: Text("I'm The Separartor"),
          );


            }, itemCount: 10),*/

         */
      ),
    );
  }
}
