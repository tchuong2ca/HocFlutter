import 'package:flutter/material.dart';

import 'model/features.dart';
class secondindex extends StatefulWidget {
  const secondindex({Key? key}) : super(key: key);

  @override
  State<secondindex> createState() => _secondindexState();
}

class _secondindexState extends State<secondindex> {
  final List<Index2> index2=[
    Index2("Thông báo"),
    Index2("Thi đua"),
    Index2("KPI"),
    Index2("Thông báo"),
    Index2("Thông báo"),
    Index2("Thông báo"),
    Index2("Thông báo"),
  ];
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text("Kết quả bán"),
        ),
     body: ListView.builder(itemCount: europeanCountries.length,itemBuilder: (context, index) {
       return ExpansionTile(title: Text(europeanCountries[index]),
       subtitle: const Text('Trailing expansion arrow icon'),
       children:
       const [
       ListTile(title: Text('This is tile number 1')),
       ],);
     }),

    );
  }
}
