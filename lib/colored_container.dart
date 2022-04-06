import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color _color;

  const ColoredContainer(this._color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: _color);
  }
}
