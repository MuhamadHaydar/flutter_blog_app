import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostDetailPage extends StatefulWidget {

  DocumentSnapshot snapshot;

  PostDetailPage(this.snapshot);

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
        backgroundColor: Colors.green,
      ),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text(
                      widget.snapshot.data()['title'][0],
                    ),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text(widget.snapshot.data()['title'],
                  style: TextStyle(
                    fontSize: 22.0,color: Colors.black
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                widget.snapshot.data()['content'],
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

