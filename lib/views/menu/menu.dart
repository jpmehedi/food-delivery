import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const String PATH = "MenuScreen";
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Menu", style: TextStyle(color: Colors.orange),), 
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_bag, color: Colors.orange,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 48,
                color: Colors.grey,
              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 8,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25)
                        )
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                           boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 2), // changes position of shadow
                              ),
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 35,
                      child: Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/image/burger.jpg"),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 45,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
      
                        //       decoration: BoxDecoration(
                        //   color: Colors.blue,
                        //   borderRadius: BorderRadius.only(
                        //     topRight: Radius.circular(60),
                        //     bottomRight: Radius.circular(10),
                        //     topLeft: Radius.circular(30),
                        //     bottomLeft: Radius.circular(10)
                        //   )
                        // ),
                  Positioned(
                      left: 15,
                      top: 120,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                    // ClipPath(
                    //   clipper: TriangleClipper(),
                    //   child: Image.network(
                    //     "https://images.unsplash.com/photo-1513775192371-1b9d33760c3f"
                    //   ),
                    // )
                    // Container(
                    // padding: EdgeInsets.all(20.0),
                    // child: ClipPolygon(
                    //   sides: 3,
                    //   borderRadius: 120.0,
                    //   rotate: 90.0,
                    //   boxShadows: [
                    //     PolygonBoxShadow(color: Colors.black, elevation: 1.0),
                    //     PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                    //   ],
                    //   child: Container(
                    //     color: Colors.black,
                    //     child: Image.network("https://images.unsplash.com/photo-1560495070-4c178920c950",fit: BoxFit.cover,),
                    //   ),
                    // )
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}