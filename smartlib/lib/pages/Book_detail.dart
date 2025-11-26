import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';

bool search_avail=false;
var title="Book-details";
String text_button="Issue the selected Book";
List selected=[];

class BookDetail extends StatefulWidget {
  const BookDetail({super.key});

  @override
  State<BookDetail> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.tealAccent.shade200,
        title: search_avail ? Padding(
          padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: Colors.black )),
            child: TextField(autocorrect: true,)
            ),
        ) : Text(
            title,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              search_avail = !search_avail; // toggle
            });
          }, icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index) {
            return ListTile(
              leading: Icon(Icons.book),
              title: Text("index $index"),
              subtitle: Text("author $index"),
              trailing: Checkbox(
                value: selected.contains(index),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      selected.add(index);
                    } else {
                      selected.remove(index);
                    }
                  });
                })
              );
            },
          ),
      ),
      floatingActionButton: Visibility(
        visible: selected.isNotEmpty,
        child: FloatingActionButton.extended(
          onPressed: (){
            print("hello");
          },
        label: Text(text_button,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),backgroundColor: Colors.tealAccent.shade400),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}