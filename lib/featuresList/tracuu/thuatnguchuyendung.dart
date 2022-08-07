import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class thuatnguchuyendung extends StatefulWidget {
  const thuatnguchuyendung({Key? key}) : super(key: key);

  @override
  State<thuatnguchuyendung> createState() => _thuatnguchuyendungState();
}

class _thuatnguchuyendungState extends State<thuatnguchuyendung> {
  TextEditingController dateinputfrom = TextEditingController();
  TextEditingController dateinputto = TextEditingController();
  @override
  void initState() {
    dateinputfrom.text = ""; //set the initial value of text field
    dateinputto.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Tra cứu thuật ngữ chuyên dùng'),
      backgroundColor: Colors.red,
    ),
        body: Padding(padding: const EdgeInsets.all(20),
          child: Column(children: [

            Row(children: [
              const Text("Tên chương trình:"),
              const SizedBox(width: 20,),
              Expanded(child: TextField(maxLines: 1,
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
                    hintText: "Nhập thông tin")
                // ),onChanged: (value){
                //   _title=value;
                // }
                ,)),
            ],),
            Row(children: [
              const Text("Thời gian từ"),
              const SizedBox(width: 5,),
              Expanded(child: TextField(
                textAlign: TextAlign.center,
                controller: dateinputfrom, //editing controller of this TextField
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500
                    ),
                    hintText: "Nhập thời gian"),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateinputfrom.text = formattedDate; //set output date to TextField value.
                    });
                  }
                },
              )),
              const SizedBox(width: 10,),
              const Text("đến"),
              const SizedBox(width: 10,),
              Expanded(child: TextField(
                textAlign: TextAlign.center,
                controller: dateinputto, //editing controller of this TextField
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500
                    ),
                    hintText: "Nhập thời gian"),
                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateinputto.text = formattedDate; //set output date to TextField value.
                    });
                  }
                },
              )),
            ],),
            Table(

              border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2),
              children: [
                TableRow( children: [
                  Column(children:[Text('STT', style: TextStyle(fontSize: 20.0))]),
                  Column(children:[Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
                  Column(children:[Text('Review', style: TextStyle(fontSize: 20.0))]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1')]),
                  Column(children:[Text('Flutter')]),
                  Column(children:[Text('5*')]),

                ]),
              ],
            ),
          ].map((e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: e,
          ))
              .toList(),),)
    )
    ;
  }
}
