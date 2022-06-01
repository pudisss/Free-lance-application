import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";


class ActiveProjectPage extends StatefulWidget {
  ActiveProjectPage({Key? key}) : super(key: key);

  @override
  State<ActiveProjectPage> createState() => _ActiveProjectPageState();
}

class _ActiveProjectPageState extends State<ActiveProjectPage> {
  // Project details variable
  List<String> details = [
    "Total Gains",
    "Total Projects",
    "Total Request",
    "Total Reviews"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          
          color: Color.fromRGBO(250, 249, 254, 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, left: 20),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(153, 135, 157, 1))
                      ),
                      Container(
                        child: Text("back", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, color: Color.fromRGBO(153, 135, 157, 1), fontWeight: FontWeight.w500))
                      )

                    ]
                  )
                )
              ),
              // Details title
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40, left: 30),
                child: Text("DETAILS", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(153, 135, 157, 1)))
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: List.generate(details.length, (index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey.withOpacity(0.3))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(details[index],style: TextStyle(fontFamily: "Red Hat Display", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text("24K", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 50, fontWeight: FontWeight.w900, color: Colors.black))
                          )
                        ]
                      )
                    );
                  })
                )
              )

            ]
          )
        )
      )
    );
  }
}