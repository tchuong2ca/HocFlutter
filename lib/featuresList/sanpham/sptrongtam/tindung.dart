import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tindung extends StatefulWidget {
  const tindung({Key? key}) : super(key: key);

  @override
  State<tindung> createState() => _tindungState();
}
class _tindungState extends State<tindung> {
  final List<String> _items = [
    'Ngành nghề',
    'Tín dụng cơ sở',
    'Tài trợ chuỗi',
    'Cam kết thu xếp vốn'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 40,
          backgroundColor: Colors.red,
          title: const Text('Tín dụng'),),
        body: Padding(padding: const EdgeInsets.all(15),
            child:
            ListView.builder(itemCount: _items.length,
                itemBuilder: (context, index) {
                  return  InkWell(onTap: (){
                    if(index==2){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          => taitrochuoi()));
                    }
                  },
                  child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15)
                        ,child: Row(children:  [
                        const Icon(CupertinoIcons.settings),
                        const SizedBox(width: 20,),
                        Expanded(child:Text(_items[index])),
                        const Icon(CupertinoIcons.arrow_right)
                      ],),)),);
                })
        ));
  }
}
class taitrochuoi extends StatefulWidget {
  @override
  State<taitrochuoi> createState() => _taitrochuoiState();
}

class _taitrochuoiState extends State<taitrochuoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 40,
          backgroundColor: Colors.red,
          title: const Text('Tài trợ chuỗi'),),
        body: Padding(padding: const EdgeInsets.all(15),
            child:
            ListView.builder(itemCount: 4,
                itemBuilder: (context, index) {
                  return  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15)
                        ,child: Row(children:  [
                       Container(
                         width: 90,
                         height: 90,
                         child: Image.asset('images/tpa.jpg'),),
                        SizedBox(width: 7,),
                        Expanded(child: Column(children: const [
                          Text('Chầm kảm vcđ', style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,maxLines: 2,),
                          Text('Sao có nhiều kẻ kém hiểu biết cứ đi cổ vũ cho các hành động chặn đầu xe đi ngược chiều làn khi Vạch đứt thế này nhỉ?? Cố tình chặn đầu vậy là đang vi phạm pháp luật đấy, chứ không phải iêng hùng sĩ gái gì đâu, hôm rồi cái ông Chặn Xe Bus ở Kim Mã còn không dám đưa đủ Full clip lên cơ',overflow: TextOverflow.ellipsis,
                          maxLines: 4,)
                        ],))
                      ],),));
                })
        ));
  }
}

