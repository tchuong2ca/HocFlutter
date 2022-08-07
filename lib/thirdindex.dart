import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/user.dart';

class thirdindex extends StatefulWidget {
  const thirdindex({Key? key}) : super(key: key);

  @override
  State<thirdindex> createState() => _thirdindexState();
}

class _thirdindexState extends State<thirdindex> {
  DateTime today = DateTime.now();
  List<bool> isSelection=List.generate(2, (index) => false);
  bool _isSelection = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelection[0]=true;
  }

  final List<User> _users = [
    User('Elliana Palacios', '@elliana', 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    User('Kayley Dwyer', '@kayley', 'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3'),
    User('Kathleen Mcdonough', '@kathleen', 'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da'),
    User('Kathleen Dyer', '@kathleen', 'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387'),
    User('Mikayla Marquez', '@mikayla', 'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
    User('Kiersten Lange', '@kiersten', 'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ' ),
    User('Carys Metz', '@metz', 'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ' ),
    User('Ignacio Schmidt', '@schmidt', 'https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ' ),
    User('Clyde Lucas', '@clyde', 'https://images.unsplash.com/photo-1569443693539-175ea9f007e8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ' ),
    User('Mikayla Marquez', '@mikayla', 'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ')
  ];
  final List<String> _KPI = [
    'Bộ chỉ tiêu KPI',
    'Kết quả KPI tạm tính',
    'Thứ hạng toàn hàng/khu vực',
        'Cảnh báo',
    'KPI cá nhân'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: const Text("Kết quả bán"),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Chương trình",),
              Tab(text: "KPI",),

            ],

          ),

        ),
        body:
        TabBarView (children: [
          Column(children: [
            const SizedBox(height: 10,)
            ,Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            ToggleButtons(

              selectedColor: Colors.red,
                color: Colors.black38,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              onPressed: (int index) {
                setState(() {
                  if(index == 0){
                    _isSelection = false;
                  }else{
                    _isSelection = true;
                  }
                  for (int buttonIndex = 0; buttonIndex < isSelection.length; buttonIndex++) {

                    if (buttonIndex == index) {
                      isSelection[buttonIndex] = true;
                      print(buttonIndex);
                    } else {
                      isSelection[buttonIndex] = false;}}
                });
              },
              isSelected: isSelection,
                children: <Widget>[
                  SizedBox(width: (MediaQuery.of(context).size.width - 36)/2, child: const Text("Thi đua",style: TextStyle(color: Colors.red),textAlign: TextAlign.center,)),
                  SizedBox(width: (MediaQuery.of(context).size.width - 36)/2, child: const Text("Ưu đãi KH",style: TextStyle(color: Colors.red),textAlign: TextAlign.center,)),

                ]
            ),],
          ),),
            _isSelection == false ? Expanded(child: ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return userComponent(user: _users[index]);
                }), ) : Expanded(child: ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return userComponent(user: _users[index]);
                }), ),
          ],),
          GridView.builder(itemCount: _KPI.length,
            padding: const EdgeInsets.only(top: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:1.3,
                crossAxisCount: 3,
                crossAxisSpacing: 10
            ), itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: (){
                  if(index==0){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bochitieukpi()));
                  }
                },
                child: Column(mainAxisSize: MainAxisSize.min,
                  children:  [
                    const Icon(CupertinoIcons.folder_solid, color: Colors.red,),

                    Text(_KPI[index], textAlign: TextAlign.center,)
                  ],),);
            },  ),
        ],),
      ),
    );
  }
  userComponent({required User user}) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width-20),
            decoration:
            const BoxDecoration(
              color: Colors.white60,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(0, 0), // Shadow position
                ),
              ], ),
            child: Row(
                children: [
                  Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(user.image),
                      )
                  ),
                  const SizedBox(width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(user.title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5,),
                        Text(user.content, style: TextStyle(color: Colors.grey[500])),
                        const SizedBox(height: 5,),
                        Text(today.toString().substring(0,10).toString(), style: TextStyle(color: Colors.grey[500])),
                      ]
                  )
                ]
            ),),
        ],
      ),
    );
  }
}
class bochitieukpi extends StatefulWidget {

  @override
  State<bochitieukpi> createState() => _bochitieukpiState();
}

class _bochitieukpiState extends State<bochitieukpi> {
  final List<String> bochitieu = [
    'Bộ chỉ tiêu 1',
    'Bộ chỉ tiêu 2',
    'Bộ chỉ tiêu 3',
    'Bộ chỉ tiêu 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Bộ chỉ tiêu KPI'),toolbarHeight: 40, backgroundColor: Colors.red,),
    body:  ListView.builder(itemCount: bochitieu.length,
        itemBuilder: (context, index) {
          return  InkWell(onTap: (){

          },
            child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15)
                  ,child: Row(children:  [
                  const Icon(CupertinoIcons.settings),
                  const SizedBox(width: 20,),
                  Expanded(child:Text(bochitieu[index])),
                  const Icon(CupertinoIcons.arrow_right)
                ],),)),);
        }));
  }
}

