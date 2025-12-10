import 'package:flutter/material.dart';
import 'package:smartlib/pages/Book_detail.dart';

// ignore: camel_case_types
class Student_home extends StatefulWidget {
  const Student_home({super.key,required this.title});
  final String title;

  @override
  State<Student_home> createState() => _Student_homeState();
}

// ignore: camel_case_types
class _Student_homeState extends State<Student_home> {
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
              padding: const EdgeInsets.only(top:17.0,bottom: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: const Color.fromARGB(255, 83, 246, 205),
                    elevation: 0.0,
                    child:Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                      child: SizedBox(
                        width:125,
                        child: Column(children: [
                          const Text('Books Issued'),
                          Text(
                            '$_counter',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),  
                          ),
                        ],),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color.fromARGB(255, 83, 246, 205),
                    elevation: 0.0,
                    child:Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                      child: SizedBox(
                        width:125,
                        child: Column(children: [
                          const Text('Total Fine Issued'),
                          Text(
                            'Rs.$_counter',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),  
                          ),
                        ],),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Text("Issued Books Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),          
            const SizedBox(height: 10,),
            SizedBox(
              height: 400,
              child: Expanded(
                child: SingleChildScrollView( 
                  child: Column( 
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetail()));
                      },
                      leading: CircleAvatar(),
                      title: Text("Book 1"),
                      subtitle: Text("author 1"),
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
            ),
            const SizedBox(height: 15,),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/books_details');
        },
        tooltip: 'ADD BOOK',
        child: const Icon(Icons.bookmark_add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}