import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:animations/animations.dart";


class MakeProposol extends StatefulWidget {
  final profilefilepath;
  final username;
  MakeProposol(this.profilefilepath, this.username);

  @override
  State<MakeProposol> createState() => _MakeProposolState(this.profilefilepath, this.username);
}

class _MakeProposolState extends State<MakeProposol> {
  final profilefilepath;
  final username;

  _MakeProposolState(this.profilefilepath, this.username);
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
              margin: EdgeInsets.only(top: 50, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(153, 135, 157, 1))
                    ),
                    Container(
                      child: Text("Back", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromRGBO(153, 135, 157, 1)))
                    )
                  ]
                )
              )
            ),
            // User information
            Container(
              margin: EdgeInsets.only(top: 60, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(profilefilepath)
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(username, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700))
                  )
                ]
              )
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Text("Make a proposition", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black))
            ),
            Container(
              width: 343,
              height: 240,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromRGBO(251, 238, 255, 1),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: TextField(
                decoration: InputDecoration(
                  hintText: "Message",
                  hintStyle: TextStyle(
                    fontFamily: "Red Hat Display",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(153, 135, 157, 1)
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)
                )
              ))
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              child: GestureDetector(
                child: Container(
                  width: 263,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color.fromRGBO(147, 120, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: Color.fromRGBO(147, 120, 255, 1)
                      )
                    ]
                  ),
                  child: Center(
                    child: Text("Send", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
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