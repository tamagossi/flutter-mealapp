import 'package:flutter/material.dart';

class AtomMealInfo extends StatelessWidget {
  final IconData icon;
  final String info;

  const AtomMealInfo({
    Key key,
    @required this.icon,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon),
        SizedBox(width: 6),
        Text(info),
      ],
    );
  }
}
