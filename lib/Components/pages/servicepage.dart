import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:animations/animations.dart";
import "makeaproposol.dart";

class ServicePage extends StatefulWidget {
  final profilefilepath;
  final username;
  final timepost;
  final title;
  final description;
  final price;
  final List<String> category;
  final  widths;

  ServicePage(this.profilefilepath, this.username, this.timepost, this.title, this.description, this.price, this.category, this.widths);

  @override
  State<ServicePage> createState() => _ServicePageState(this.profilefilepath, this.username, this.timepost, this.title, this.description, this.price, this.category, this.widths);
}

class _ServicePageState extends State<ServicePage> {

  final profilefilepath;
  final username;
  final timepost;
  final title;
  final description;
  final price;
  final List<String> category;
  final  widths;

  _ServicePageState(this.profilefilepath, this.username, this.timepost, this.title, this.description, this.price, this.category, this.widths);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 20),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(153, 135, 157, 1))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text("Back", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromRGBO(153, 135, 157, 1)))
                    ),
                    
                  ]
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(profilefilepath)
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(username, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black))
                                )
                              ]
                            )
                          ),
                          // Text Section
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Posted $timepost", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, color: Color.fromRGBO(153, 135, 157, 1), fontWeight: FontWeight.w300))
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(title, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black))
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 325,
                                  child: Text(description, textAlign: TextAlign.start, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.withOpacity(0.5)))
                                ),
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("16 Propositions", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, color: Colors.grey.withOpacity(.5)))
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Text(price, style: TextStyle(fontFamily:"Red Hat Display", fontSize: 16, color: Color.fromRGBO(147, 120, 255, 1), fontWeight: FontWeight.w500))
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              children: List.generate(category.length, (index) {
                                return Container(
                                  width: widths[index],
                                  height: 24,
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1, color: Color.fromRGBO(153, 135, 157, 1))
                                  ),
                                  child: Center(child: Text(category[index], style: TextStyle(fontFamily:"Red Hat Display", fontSize: 12.8, fontWeight: FontWeight.w300,color: Color.fromRGBO(153, 135, 157, 1))))
                                  
                                );
                              })
                            )
                          )
                        ]
                      )
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MakeProposol(profilefilepath, username))
                          );
                        },
                        child: Container(
                          width: 263,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(147, 120, 255, 1),

                          ),
                          child: Center(
                            child: Text("Make a proposition", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                          )
                        )
                      )
                    )
          ]
        )
      )
    );
  }
}