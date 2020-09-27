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
    return Container();
  }
}

