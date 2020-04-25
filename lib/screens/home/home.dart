import 'package:api_study/screens/home/widget/CustomSearchDelegate.dart';
import 'package:api_study/screens/home/widget/PageViewApp.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heros'),
        backgroundColor: Colors.red[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.red[800],
      extendBody: true,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          PageViewApp(),
        ],
      ),
    );
  }
}
