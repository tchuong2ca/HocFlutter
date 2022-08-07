import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/featuresList/sanpham/sptrongtam/taikhoan.dart';
import 'package:viduseabank/featuresList/sanpham/sptrongtam/tindung.dart';





class sanpham extends StatefulWidget {
  const sanpham({Key? key}) : super(key: key);

  @override
  State<sanpham> createState() => _sanphamState();
}

class _sanphamState extends State<sanpham> {


  final List<String> _sphienhuu = [
    'Tín dụng',
    'Tài trợ XNK và bảo lãnh',
    'Tài khoản & tiền gửi',
    'Thẻ',
    'Thanh toán & quản lý dòng tiền',
    'Dịch vụ khác'
  ];

  final List<String> _sptrongtam = [
    'Tín dụng',
    'Tài khoản',

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: const Text("Sản phẩm"),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Sản phẩm hiện hữu",),
              Tab(text: "Sản phẩm trọng tâm",),

            ],

          ),

        ),
        body:
        TabBarView (children: [

          GridView.builder(itemCount: _sphienhuu.length,
            padding: const EdgeInsets.only(top: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:2.3,
                crossAxisCount: 2,
                crossAxisSpacing: 10
            ), itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: (){
                },
                child: Column(mainAxisSize: MainAxisSize.min,
                  children:  [
                    const Icon(CupertinoIcons.folder_solid, color: Colors.red,),

                    Text(_sphienhuu[index], textAlign: TextAlign.center,)
                  ],),);
            },  ),
          GridView.builder(itemCount: _sptrongtam.length,
            padding: const EdgeInsets.only(top: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:2.3,
                crossAxisCount: 2,
                crossAxisSpacing: 10
            ), itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: (){
                  print(index);
                 if(index==0){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>tindung()));
                 }
                 else if(index==1){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>taikhoan()));
                 }
                },
                child: Column(mainAxisSize: MainAxisSize.min,
                  children:  [
                    const Icon(CupertinoIcons.folder_solid, color: Colors.red,),

                    Text(_sptrongtam[index], textAlign: TextAlign.center,)
                  ],),);
            },  ),
        ],),
      ),
    );
  }

}

