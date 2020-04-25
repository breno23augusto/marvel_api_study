import 'package:flutter/material.dart';

class HeroCardBox extends StatelessWidget {
  final Widget cardContent;
  final Color backgroundColor;

  const HeroCardBox({
    Key key,
    this.cardContent,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: cardContent,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

}
