import 'package:flutter/material.dart';

import 'model/features.dart';
class secondindex extends StatefulWidget {
  const secondindex({Key? key}) : super(key: key);

  @override
  State<secondindex> createState() => _secondindexState();
}

class _secondindexState extends State<secondindex> {
  bool _customTileExpanded = false;
  final List<Index2> index2=[
    Index2("Thông báo"),
    Index2("Thi đua"),
    Index2("KPI"),
    Index2("Thông báo"),
    Index2("Thông báo"),
    Index2("Thông báo"),
    Index2("Thông báo"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text("Kết quả bán"),


        ),
    body:Column(
    children: <Widget>[
    const ExpansionTile(
    title: Text('ExpansionTile 1'),
    subtitle: Text('Trailing expansion arrow icon'),
    children: <Widget>[
    ListTile(title: Text('This is tile number 1')),
    ],
    ),
    ExpansionTile(
    title: const Text('ExpansionTile 2'),
    subtitle: const Text('Custom expansion arrow icon'),
    trailing: Icon(
    _customTileExpanded
    ? Icons.arrow_drop_down_circle
        : Icons.arrow_drop_down,
    ),
    children: const <Widget>[
    ListTile(title: Text('This is tile number 2')),
    ],
    onExpansionChanged: (bool expanded) {
    setState(() => _customTileExpanded = expanded);
    },
    ),
    const ExpansionTile(
    title: Text('ExpansionTile 3'),
    subtitle: Text('Leading expansion arrow icon'),
    controlAffinity: ListTileControlAffinity.leading,
    children: <Widget>[
    ListTile(title: Text('This is tile number 3')),
    ],
    ),
    ],
    ));
  }
}
