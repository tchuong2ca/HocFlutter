import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/saleidea.dart';

class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 40,

      ),
      body: Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(color: Colors.greenAccent,
                    child: IconButton(icon: const Icon(Icons.person), onPressed: (){print('alo');},color: Colors.white,))
            ),
          ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("Hello"),),
            IconButton(onPressed: (){},
                color: Colors.red,
                iconSize: 30,
                icon: const Icon(Icons.notifications))
          ],),
        Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.greenAccent,
                      child: IconButton(icon: const Icon(Icons.person), onPressed: (){print('alo');},color: Colors.white,))
              ),
            ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("SaleKit KHDN"),),
            IconButton(onPressed: (){showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Đăng nhập và sử dụng với ứng dụng', style: TextStyle(fontSize: 15),),
                content: Wrap(direction: Axis.vertical,
                children: [
                  Row(
                  children: [IconButton(icon: const Icon(Icons.person), onPressed: (){print('KHDN');},color: Colors.red,),
                  Text("SaleKit KHDN")],),
                  SizedBox(height: 15,),
                  Row(
                    children: [IconButton(icon: const Icon(Icons.person), onPressed: (){print('KHCN');},color: Colors.red,),
                      Text("SaleKit KHCN")],),
                ],)

              ),
            );},
                color: Colors.red,
                iconSize: 30,
                icon: const Icon(Icons.loop))
          ],),
        SizedBox(height: 15,),
        Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.greenAccent,
                      child: IconButton(icon: const Icon(Icons.person), onPressed: (){print('alo');},color: Colors.white,))
              ),
            ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("Q&A"),)
          ],),
        Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.greenAccent,
                      child: Icon(CupertinoIcons.person, color: Colors.white,))
              ),
            ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("Đánh giá ứng dụng"),)
          ],),
        GestureDetector(onTap: (){Navigator.push(context,
            MaterialPageRoute(builder: (context)
            => saleidea()));},child: Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.greenAccent,
                      child: Icon(CupertinoIcons.person, color: Colors.white,))
              ),
            ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("Ý tưởng bán hàng"),)
          ],),),
        Row(
          children: [
            const SizedBox(width: 15,),
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.greenAccent,
                      child: IconButton(icon: const Icon(Icons.person), onPressed: (){print('alo');},color: Colors.white,))
              ),
            ),
            const SizedBox(width: 15,),
            const Expanded(child: Text("Đăng xuất"),)
          ],),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [IconButton(iconSize: 30, color: Colors.red,onPressed: (){}, icon: Icon(CupertinoIcons.globe)),
                              Text("Website")],),
            Column(children: [IconButton(iconSize: 30, color: Colors.red,onPressed: (){}, icon: Icon(Icons.call_outlined)),
              Text("Hót lai")],),
          ],
        )
      ] .map((e) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: e,
      ))
          .toList(),),);
  }
}
