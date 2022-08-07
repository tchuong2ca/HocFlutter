import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/featuresList/tracuu/chuongtrinhuudai.dart';
import 'package:viduseabank/featuresList/tracuu/thuatnguchuyendung.dart';

class tracuu extends StatelessWidget {
  const tracuu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Tra cứu TSDB',
      'Tra cứu thẩm quyền phê duyệt',
      'Tra cứu thuật ngữ chuyên dùng',
      'Chương trình ưu đãi',
      'TCXL',
      'Tỷ lệ tài trợ cung ứng',
      'Tỷ lệ cho vay tỷ suất VLXD',
      'Lãi suất'
    ];

    return Scaffold(

      body: GridView.builder(itemCount: items.length,
      padding: const EdgeInsets.only(top: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.3,
        crossAxisCount: 3,
        crossAxisSpacing: 10
      ), itemBuilder: (BuildContext context, int index){
        return InkWell(
          onTap: (){if(index==3){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)
                => chuongtrinhuudai()));
          }
            if(index==2){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)
            => thuatnguchuyendung()));
            }
          },
          child: Column(mainAxisSize: MainAxisSize.min,
            children:  [
          const Icon(CupertinoIcons.folder_solid, color: Colors.red,),

          Text(items[index], textAlign: TextAlign.center,)
        ],),);
      },  ),
    );
  }
}

