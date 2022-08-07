import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/model/saleIdeaModel.dart';

class saleidea extends StatefulWidget {
  const saleidea({Key? key}) : super(key: key);

  @override
  State<saleidea> createState() => _saleideaState();
}

class _saleideaState extends State<saleidea> {
  String _title='';
  String _content='';
  final List<saleIdeaModel> _saleidea = [
    saleIdeaModel(title: "Tiêu đề", content: "Nội dung", status: "Đã duyệt"),
    saleIdeaModel(title: "Tiêu đề", content: "Nội dung", status: "Đợi duyệt"),
    saleIdeaModel(title: "Tiêu đề", content: "Nội dung", status: "Từ chối"),
  ];

  final List<String> items = [
    'Đã duyệt',
    'Đợi duyệt',
    'Từ chối'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(
      backgroundColor: Colors.red,
      toolbarHeight: 40,
      title: const Text('Ý tưởng bán hàng'),
      centerTitle: true,
    ),
      body: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [const Text("Trạng thái"),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Text(
                      'Tất cả',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )).toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: const Icon(
                    Icons.arrow_drop_down
                ),
                iconSize: 35,
                buttonHeight: 50,
                buttonWidth: 200,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  color: const Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: 150,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),

          ],),
        const SizedBox(height: 10,),
        Expanded(child: ListView.builder(itemCount: _saleidea.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => detailSaleIdea(detailsaleidea: _saleidea[index])),
                  );
                },onLongPress: (){showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Muốn xoá à'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Thôi'),
                      child: const Text('Thôi'),
                    ),
                    TextButton(
                     onPressed: (){_saleidea.remove(_saleidea[index]);
                     Navigator.of(context).pop();
                     setState(() {
                     });},

                      child: const Text('Xoá mẹ đi'),
                    ),
                  ],
                ),
              );
                // Add your onPressed code here!
              },
                child: listidea(saleidea: _saleidea[index]),);
            })),
        FloatingActionButton(
          onPressed: () {showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                title: Container(height: 30,
                  child: TextField(maxLines: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500
                      ),
                      hintText: "Tiêu đề"
                  ),onChanged: (value){
                    _title=value;
                    },),
                ),
                content: Wrap(
                  children: [
                  TextField(maxLines: 5,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500
                        ),
                        hintText: "Nội dung"
                    ),
                    onChanged: (value){
                      _content=value;
                    },
                  ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                       //style: const ButtonStyle(backgroundColor: Colors.redAccent),
                        onPressed: () {

                          _saleidea.add(saleIdeaModel(title: _title,content: _content, status: 'Đợi duyệt'));
                          _content='';
                          _title='';
                          Navigator.of(context).pop();
                          setState(() {
                          });
                        },
                        child: const Text('Tạo', style: TextStyle(fontSize: 20.0),),
                      ),
                    ),
                ],)

            ),
          );
            // Add your onPressed code here!
          },
          backgroundColor: Colors.red,
          child: const Icon(CupertinoIcons.plus),
        ),
      ],

      ),)
    );
  }

  Widget listidea({required saleIdeaModel saleidea}) {
    return Card (
      margin: const EdgeInsets.all(10),
      color: const Color(0xfffafafa),
      shadowColor: Colors.blueGrey,
      elevation: 3,

      child: Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
        children: [
          Text(saleidea.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          Text(saleidea.content!, maxLines: 3, overflow: TextOverflow.ellipsis,),
          Text(saleidea.status!,
          ),
        ],
      ),)
    );
  }
  Widget detailSaleIdea({required saleIdeaModel detailsaleidea}){
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.red,
      toolbarHeight: 40,
      centerTitle: true,
      title: const Text("Kết quả bán"),
    ),
    body: Center(child: Column(children: [
      const SizedBox(height: 10,),
      Text(detailsaleidea.title!, textAlign: TextAlign.center,style: const TextStyle(color: Colors.red),),
      const SizedBox(height: 15,),
      Text(detailsaleidea.content!, textAlign: TextAlign.center,),
    ],),)
    );
  }
}
