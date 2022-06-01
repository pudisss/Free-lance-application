import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:io" show Platform;


class Message extends StatefulWidget {
  Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  static Future fetchData() async {
    final response = await http.get(Uri.parse("https://randomuser.me/api/"));

    final data = jsonDecode(response.body);



    List users = [];
    for (var i in data["results"]) {
      
      final user_data = [
        i["name"]["first"],
        i["name"]["last"],
        i["picture"]["medium"],
        i["gender"]
      ];

      users.add(user_data);
    }
    return users;
    
  }

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Text("Messages", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 39.06, fontWeight: FontWeight.w900, color: Colors.black))
          ),
          Container(
            margin: EdgeInsets.only(top: 30, ),
            child: FutureBuilder(
        future: fetchData(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          return (snapshot.connectionState == ConnectionState.done) ? 
            Container(
              child: Column(
                children: List.generate(snapshot.data.length, (index) {
                  return Container(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Image.network(snapshot.data[index][2])
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("${snapshot.data[index][0]} ${snapshot.data[index][1]}",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500))
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("I have some question about",textAlign: TextAlign.left, style: TextStyle(fontFamily:"Red Hat Display", fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w600)),
                              )
                            ]
                          )
                        ),
                        Container(
                          child: GestureDetector(
                            child: Image.asset('assets/images/nexticon.png')
                          )
                        )
                      ]
                    )
                  );
                })
              )
            ) : (Platform.isAndroid) ? CircularProgressIndicator() : CupertinoActivityIndicator();
        }
      ))]))
      

      
      
      
      
    );
  }
}