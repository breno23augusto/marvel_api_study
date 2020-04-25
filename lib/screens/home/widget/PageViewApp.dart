import 'package:api_study/screens/home/widget/HeroCard.dart';
import 'package:flutter/material.dart';

import 'HeroCardBox.dart';

class PageViewApp extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutExpo,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 250),
          curve: Curves.easeOut,
          top: widget.top,
          height: MediaQuery.of(context).size.height * .80,
          left: value,
          right: value * -1,
          child: GestureDetector(
            onPanUpdate: widget.onPanUpdate,
            child: PageView(
              children: <Widget>[
                HeroCardBox(
                  cardContent: HeroCard(),
                  backgroundColor: Colors.yellow,
                ),
                HeroCardBox(
                  cardContent: HeroCard(),
                  backgroundColor: Colors.green,
                ),
                HeroCardBox(
                  cardContent: HeroCard(),
                  backgroundColor: Colors.white,
                ),
              ] ,
            ),
          ),
        );
      },
    );
  }
}
