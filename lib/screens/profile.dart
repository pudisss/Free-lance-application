import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";


class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Text("Profile", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 39.06, fontWeight: FontWeight.w900,))
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("assets/images/profilepageavatar.png")
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,

                            child: Text("Dustin Warren", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w700))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("UX Designer", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey))
                          ),
                        ]
                      )
                    ),

                  
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      
                      child: Text("Description", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text('My name is Dustin, I’m a young designer from Dublin. I practice for 4 years now, worked with small and big agencies. Blablabla',textAlign: TextAlign.left, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey))
                    ),
                  ]
                )
              ),
              // Rating
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("64 Reviews", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("Average Rating", style: TextStyle(fontFamily: "Red Hat Display",fontSize: 12.8, fontWeight: FontWeight.w400, color: Colors.grey,))
                    )
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Last review", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, color: Color.fromRGBO(153, 135, 157, 1), fontWeight: FontWeight.w400))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Awesome job!", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                          ),
                          Container(
                            child: Text("-Kyle Watson", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 12.8, color: Colors.black, fontWeight: FontWeight.w300))
                          )
                        ]
                      )
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(),
                          Container(),
                          Container(),
                        ]
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}