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
      title: 'Smart Lib',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      ),
      home: const MyHomePage(title: 'Smart Lib'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.tealAccent.shade400,
        elevation: 0.0,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                GestureDetector(
                  onTap: _incrementCounter,
                  child:Row(
                    children: [
                      Icon(Icons.settings),
                      Text("Profile")
                      ],
                    ),
                  ),
              ],
            )
          ],
          ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: const Color.fromARGB(255, 83, 246, 205),
                    elevation: 0.0,
                    child:Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        const Text('Books Issued'),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,  
                        ),
                      ],),
                    ),
                  ),
                  Card(
                    color: const Color.fromARGB(255, 83, 246, 205),
                    elevation: 0.0,
                    child:Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        const Text('Total Fine Issued'),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,  
                        ),
                      ],),
                    ),
                  ),
                ],
              ),
            ),

            Text("Issued Books Details"),          
            const SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView( 
                child: Column( 
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name"),
                    subtitle: Text("author"),
                    trailing: Text("Issue date"),
                  ),
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Book Name1"),
                    subtitle: Text("author1"),
                    trailing: Text("Issue date1"),
                  ),
                  ]
                ),
              ),
            ),
            const SizedBox(height: 15,),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'ADD BOOK',
        child: const Icon(Icons.bookmark_add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}