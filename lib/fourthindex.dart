import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/model/user.dart';
class fourthindex extends StatefulWidget {
  const fourthindex({Key? key}) : super(key: key);
  @override
  State<fourthindex> createState() => _fourthindexState();
}

class _fourthindexState extends State<fourthindex> {
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

  List<User> _foundedUsers = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = _users.where((user) => user.title.toLowerCase().contains(search)).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            toolbarHeight: 40,
            centerTitle: true,
            title: Text("Công cụ hỗ trợ bán"),

            bottom: const TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(text: "Kỹ năng cần thiết",),
                Tab(text: "Tra cứu",),
                Tab(text: "Dự tính",),
                Tab(text: "Danh mục hồ sơ",)
              ],

            ),

          ),
          body: TabBarView(

            children: [
              Column(

                children: [
                  const SizedBox(height: 10,),

                   Padding(padding: EdgeInsets.only(right: 5, left: 5),

                    child: TextField(
                      onChanged: (value) => onSearch(value),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          suffixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500
                          ),
                          hintText: "Tìm kiếm"
                      ),
                    ),

                  ),
                  Expanded(child: Container(
                    child: _foundedUsers.length > 0 ? ListView.builder(
                        itemCount: _foundedUsers.length,
                        itemBuilder: (context, index) {
                          return userComponent(user: _foundedUsers[index]);
                        }) : Center(child: Text("No users found", style: TextStyle(color: Colors.white),)),
                  ), ),
                ],),

              Expanded(child: GridView.count(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: List.generate(20, (index) {
                    return Column(children: const [
                      Icon(CupertinoIcons.alarm),
                      Text("data")
                    ],);
                  })
              ),),
              Expanded(child: GridView.count(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: List.generate(20, (index) {
                    return Column(children: const [
                      Icon(CupertinoIcons.alarm),
                      Text("data")
                    ],);
                  })
              ),),
              Expanded(child: GridView.count(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: List.generate(20, (index) {
                    return Column(children: const [
                      Icon(CupertinoIcons.alarm),
                      Text("data")
                    ],);
                  })
              ),),

            ],

          ),
        )
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
                    ]
                )
              ]
          ),),
        ],
      ),
    );
  }
  }

