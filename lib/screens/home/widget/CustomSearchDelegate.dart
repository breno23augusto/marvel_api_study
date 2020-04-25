import 'package:api_study/screens/home/widget/HeroCard.dart';
import 'package:api_study/screens/home/widget/HeroCardBox.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('sad');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Container(
      color: Colors.red[800],
      width: screenWidth,
      height: screenHeight,
      child: PageView(
        children: <Widget>[
          HeroCardBox(
            cardContent: HeroCard(),
            backgroundColor: Colors.green,
          )
        ],
      ),
    );
  }
}
