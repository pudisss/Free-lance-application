import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:animations/animations.dart";
import "../Components/pages/servicepage.dart";

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  // Essential variables
  List<String> categories = [
    "UX/UI", "DESIGN", "FIGMA", "PHOTOSHOP"
  ];
  List widths = [
    double.parse("47"),
    double.parse("60"),
    double.parse("53"),
    double.parse("91")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(250, 249, 254, 1),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 25),
                child: Text("Search", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black))
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      color: Color.fromRGBO(251, 238, 255, 1),
                    )
                  ]
                ),
                child: SizedBox(
                  width: 343,
                  height: 45,

                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(Icons.search, color: Color.fromRGBO(153, 135, 157, 1))
                    )
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 25),
                child: Row(
                  
                  children: [
                    Container(
                      child: Image.asset('assets/images/filtericon.png')
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Filter", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)))
                    )
                  ]
                )
              ),
              // Information
              OpenContainer(
                openBuilder: (context, action) => ServicePage("assets/images/profile.png", "Arlene Mckinney", "3 days ago", "Create an Application", "We are a young startup from Paris looking for a designer who can help us design a tech oriented application. We are open to proposals. You can saw our project here: http://www.zotware.com. We are working with Figma and Photoshop.", r"$ 2500", categories, widths),
                transitionDuration: Duration(milliseconds: 400),
                transitionType: ContainerTransitionType.fadeThrough,
                closedBuilder: (context, action) => Container(
                margin: EdgeInsets.only(top: 50),
                width: 359,
                height: 429,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(

                      height: 74,
                      width: 359,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 237, 240, 1),
                        borderRadius: BorderRadius.only(  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                      ),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                        
                        children: [
                          Container(
                            child: Image.asset('assets/images/profile.png')
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Arlene Mckinney", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                          )
                        ]
                      )
                    )),
                    // Text Section
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Text("Posted 3 days ago", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, fontWeight: FontWeight.w300, color: Color.fromRGBO(153, 135, 157, 1)))
                          ),
                          // Text title
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Text('Create an Application', style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black))
                          ),
                          // Description
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Description", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                                ),
                                Container(
                                  width: 324,
                                  height: 104,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 5, right: 10),
                                  child: Text("We are a young startup from Paris looking for a designer who can help us design a tech oriented application. We are open to proposals.", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)))
                                )
                              ]
                            )

                          ),
                          // Pricing and Marketing
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                            
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("16 propositions", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, fontWeight: FontWeight.w300, color: Color.fromRGBO(153, 135, 157, 0.64)))
                                ),
                                // Prices
                                Container(
                                  child: Text(r"2400$", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(147, 120, 255, 1)))

                                )
                              ]
                            )
                          ),
                          // Category
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            
                            child: Row(
                              
                              children: List.generate(categories.length, (index) {
                                return Container(
                                  width: widths[index],
                                  height: 24,
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1, color: Color.fromRGBO(153, 135, 157, 1))
                                  ),
                                  child: Center(
                                    child: Text(categories[index], style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, fontWeight: FontWeight.w300, color: Color.fromRGBO(153, 135, 157, 1)))
                                  )
                                );
                              })
                            )
                          )
                        
                        ]
                      )
                      
                    )


                  ]
                )
              ))

            ]
          )
        )
      )
    );
  }
}