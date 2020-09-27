import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:async/async.dart';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  StreamSubscription<QuerySnapshot> subscription;

  List<DocumentSnapshot> snapshot;

  CollectionReference collectionReference = Firestore.instance.collection("Post");

  @override
  void initState() {
    super.initState();
    
    subscription = collectionReference.snapshots().listen((dataSnapshot) {
      setState(() {
        snapshot = dataSnapshot.documents;
      });

    });
    
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog App"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Muhamad Haydar'),
              accountEmail: Text('muhamadhaydarjawad@gmail.com'),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              title: Text("First Page"),
              leading: Icon(Icons.cake, color: Colors.purple),
            ),
            ListTile(
              title: Text('Second Page'),
              leading: Icon(
                Icons.search,
                color: Colors.redAccent,
              ),
            ),
            ListTile(
              title: Text('Third Page'),
              leading: Icon(
                Icons.cached,
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Fourth Page'),
              leading: Icon(
                Icons.menu,
                color: Colors.greenAccent,
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text('Fourth Page'),
              trailing: Icon(
                Icons.close,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return Card(
          elevation: 10,
          margin: EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              children: [
                CircleAvatar(
                  child: Text(snapshot[index].data()["title"][0]),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(snapshot[index].data()['title']),
                      Text(snapshot[index].data()['content'])
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },itemCount: snapshot.length,),
    );
  }
}
