import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdindex extends StatefulWidget {
  const thirdindex({Key? key}) : super(key: key);

  @override
  State<thirdindex> createState() => _thirdindexState();
}

class _thirdindexState extends State<thirdindex> {
  List<bool> isSelection=List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text("Kết quả bán"),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Chương trình",),
              Tab(text: "API",),

            ],

          ),

        ),
        body:
        TabBarView (children: [
          Column(children: [Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ToggleButtons(

              selectedColor: Colors.red,
                color: Colors.black38,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0; buttonIndex < isSelection.length; buttonIndex++) {
                    if (buttonIndex == index) {
                      isSelection[buttonIndex] = true;
                    } else {
                      isSelection[buttonIndex] = false;
                    }
                  }

                });
              },
              isSelected: isSelection,
              children: const <Widget>[
               Text("Thi đua"),
                Text("Ưu đãi")
              ],
            ),],
          ),),
          ],),
          Text("data")
        ],),
      ),
    );
  }
}
