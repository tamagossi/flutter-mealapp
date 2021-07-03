import 'package:flutter/material.dart';

class MoleculeListInfo extends StatelessWidget {
  final String title;
  final List contents;

  MoleculeListInfo({@required this.contents, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$title',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: contents
                  .map(
                    // TODO: Change to the ListTile widget
                    (content) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text('⚫   $content'),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
