import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viduseabank/featuresList/sanpham/sanpham.dart';
import 'package:viduseabank/featuresList/tracuu/tracuu.dart';
import 'package:viduseabank/fourthindex.dart';
import 'package:viduseabank/model/features.dart';
import 'package:viduseabank/more.dart';

class firstindex extends StatefulWidget {
  const firstindex({Key? key}) : super(key: key);

  @override
  State<firstindex> createState() => _firstindexState();
}

class _firstindexState extends State<firstindex> {
  


  final  List<Features> _features1=[
    Features("Tra cứu", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Thông báo", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Sản phẩm", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Chỉ tiêu", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
  ];
  final List<Features> _features2=[
    Features("Thi đua", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Q&A có sẵn", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("SP", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Bờ la", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Bờ la", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("SP", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Bờ la", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Bờ la", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    Features("Bờ la", 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      backgroundColor: Colors.red,
      toolbarHeight: 0,
    ),
      body: Column(
        children:[
          Stack(children: [
            Image.asset('images/pic3.jpg'),
            Positioned(top: 50,
                left: 20,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(color: Colors.greenAccent,
                          child: IconButton(icon: const Icon(Icons.person), onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)
                              => more()));},color: Colors.white,))
                  ),
                ))
          ],),
          Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Color(0xfafafafa),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 4), // Shadow position
                  ),
                ],
              ),
              child: Center(child: ListView.builder(scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _features1.length,
                  itemBuilder: (context, index) {
                    return InkWell(onTap: (){
                      if(index==0){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)
                            => fourthindex(1)));
                      }
                      else if(index==1){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)
                            => fourthindex(2)));
                      }
                      else if(index==2){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                      => sanpham()));
                      }},
                      child: Center(
                      child: features1(features: _features1[index]),
                    ),);
                  }),)
          ),
          const SizedBox(height: 15,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 310,
                    width: double.infinity,
                    child: GridView.count(
                        primary: false,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        crossAxisCount: 4,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(_features2.length, (index) {
                          return Center(
                            child: features1(features: _features2[index]),
                          );
                        })
                    ),
                  ),
                  const SizedBox(height: 15,),
                  CarouselSlider(
                      options: CarouselOptions(height: 200.0, autoPlay: true),

                      items: [
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.alphacoders.com/719/thumb-1920-719514.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images2.alphacoders.com/969/thumb-1920-969905.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.alphacoders.com/786/thumb-1920-786887.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images7.alphacoders.com/724/thumb-1920-724419.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //5th Image of Slider
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images6.alphacoders.com/670/thumb-1920-670517.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 700,
                    width: double.infinity,
                    child: GridView.count(
                        primary: false,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1/.65,
                        crossAxisCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(_features2.length, (index) {
                          return Center(
                            child: features2(features: _features2[index], context: context),
                          );
                        })
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

features1({required Features features}){
  return SizedBox(
      height: 84,
      width: 84,
      child: Column(
        children: [
          SizedBox(
              width: 60,
              height: 60,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Icon(Icons.folder, color: Colors.red,))
          ),
          Text(features.name)],));
}
features2({required Features features, required BuildContext context}){
  return
    Container(
        width: MediaQuery.of(context).size.width/2,
        height: 100,
        margin: const EdgeInsets.only(right: 15, left: 15),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.network(features.image, fit: BoxFit.fill,)
        )
    );
}

