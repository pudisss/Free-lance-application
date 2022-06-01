import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:freelanceapp/screens/welcome/welcomes.dart';


class Welcome1 extends StatefulWidget {
  Welcome1({Key? key}) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/bubble1.png")
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35, left: 20),
                child: Text("Spiice", style: TextStyle(fontFamily: "Red Hed Display", fontSize: 70, color: Colors.black, fontWeight: FontWeight.w900))
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 70 ),
                child: Column(
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Welcomes())
                          );
                        },
                        child: Container(
                          width: 264,
                          height: 54,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(147, 120, 255, 1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40,
                                color: Color.fromRGBO(147, 120, 255, 1),
                                
                              )
                            ]
                          ),
                          child: Center(
                            child: Text("Discover the Platform", style: TextStyle(fontFamily: 'Red Hed Display', fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                          )
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "You already have an account? ",
                                style: TextStyle(fontFamily: "Red Hed Display", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)

                              ),
                              TextSpan(
                                text: "Sign in",
                                style: TextStyle(fontFamily: "Red Hed Display", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)
                              )
                            ]
                          )
                        )
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