import 'package:flutter/material.dart';

class CanvasBackgroundImage extends StatelessWidget {
  const CanvasBackgroundImage({
    Key? key,
    this.widget,
  }) : super(key: key);

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height,
      width: mediaQuery.size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: widget,
    );
  }
}
