import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    );
  }
}
