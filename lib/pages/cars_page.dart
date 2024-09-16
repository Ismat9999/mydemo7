import 'package:flutter/material.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _State();
}

class _State extends State<CarsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Cars",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.notifications_none,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.shopping_cart,color: Colors.white,),
          SizedBox(width: 10,),
        ],
      ),
      body:
      ListView(
        children: [
          _itemList(image:"assets/images/ferrari.jpg"),
          _itemList(image:"assets/images/mclaren.jpg"),
          _itemList(image:"assets/images/bmw.jpg"),
          _itemList(image:"assets/images/matiz.jpg"),
        ],
      ),
    );
  }
  Widget _itemList({image}) {
    return Container(
      child:
      Container(
        margin: EdgeInsets.all(10),
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ]
            ),
          ),
          padding: EdgeInsets.only(top: 5,left: 5),
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PDP CARS", style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text("Electric", style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 90,),
                    Text("100\$", style: TextStyle(color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
                //@circle
                Expanded(child:
                Container(
                  padding: EdgeInsets.only(right: 5,top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(Icons.heart_broken_outlined,size: 30,),
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );



  }
}
