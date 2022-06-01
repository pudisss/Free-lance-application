import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:animations/animations.dart";
import "../Components/pages/activeprojectpage.dart";



class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Essential variables
  List texts = [
    [
      "WireFrames",
      "Fransico Fisher"
    ],
    [
      "Need a new logo",
      "Amel Rio",
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        
        color: Color.fromRGBO(250, 249, 254, 1),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50, left:20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Feed", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 39, color: Colors.black, fontWeight: FontWeight.w900))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Resume", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700))
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    
                    
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 32,
                          height: 140,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(251, 234, 255, 1),
                                Color.fromRGBO(251, 234, 255, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          )
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 32,
                          height: 180,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(251, 234, 255, 1),
                                Color.fromRGBO(251, 234, 255, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          )
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 32,
                          height: 215,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(251, 234, 255, 1),
                                Color.fromRGBO(251, 234, 255, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          )
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 32,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(147, 120, 255, 1),
                          )
                        ),
                       
                      ]
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Container(
                          child: Text("TOTAL GAINS", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromRGBO(153, 135, 157, 1)))
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('27 K', style: TextStyle(fontFamily: "Red Hat Display", fontSize: 60.75, fontWeight: FontWeight.w900, color: Colors.black))
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("- 18%", style: TextStyle(fontFamily:"Red Hat Display", fontSize: 18, color: Color.fromRGBO(157, 135, 135, 1), fontWeight: FontWeight.w500))
                        )
                      ]
                    )
                  )
                ]
              )

            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Active Projects", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      child: Container(
                        width: 83,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(251, 234, 255, 1),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text("View all", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black))
                        )
                      )
                    )
                  )
                ]
              )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(texts.length, ((index) {
                  return OpenContainer(
                    openBuilder: (context, action) => ActiveProjectPage(),
                    transitionDuration: Duration(milliseconds: 400),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) => Container(
                    width: 359,
                    height: 102,
                    margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          color: Colors.grey.withOpacity(0.1),
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 20 ,left: 20),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(texts[index][0], style: TextStyle(fontFamily: 'Red Hat Display', fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(texts[index][1], style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight:FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)))
                              )
                            ]
                          )
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(right: 20, bottom: 20),
                          child: Text("Active", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(153, 135, 157, 1)))

                        )

                      ]
                    )
                  ));
                }))
              )
            )
          ]
        )
      )
    ));
  }
}