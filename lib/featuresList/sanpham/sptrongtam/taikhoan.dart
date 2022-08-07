import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taikhoan extends StatefulWidget {
  const taikhoan({Key? key}) : super(key: key);

  @override
  State<taikhoan> createState() => _taikhoanState();
}
class _taikhoanState extends State<taikhoan> {
  final List<String> _items = [
   'Combo',
    'Tín dụng',
    'Paypal'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 40,
      backgroundColor: Colors.red,
      title: const Text('Tài khoản'),),
      body: Padding(padding: const EdgeInsets.all(15),
      child:
          ListView.builder(itemCount: _items.length,
              itemBuilder: (context, index) {
                return  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(15)
                      ,child: Row(children:  [
                      const Icon(CupertinoIcons.settings),
                      const SizedBox(width: 20,),
                      Expanded(child:Text(_items[index])),
                      const Icon(CupertinoIcons.arrow_right)
                    ],),));
              })
    ));
  }
}
