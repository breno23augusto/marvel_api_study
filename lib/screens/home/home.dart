import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('Personagens'),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://picsum.photos/250?image=9',
                      ),
                      Text('The Enchanted Nightingale'),
                    ],
                  ),
                ),
                subtitle:
                Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
