import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:freelanceapp/screens/homescreen.dart';
import "../../backend/Authentication.dart";
import '../home.dart';


/// This is the main class function for the welcomes page
/// Well this is a pageview which means that it will have a lot of pages in only one file
/// for user to switch and swap in each pages
class Welcomes extends StatefulWidget {
  Welcomes({Key? key}) : super(key: key);

  @override
  State<Welcomes> createState() => _WelcomesState();
}

class _WelcomesState extends State<Welcomes> {

  List<Widget> pages = [
    Welcome2(),
    Welcome3(),
    Welcome4(),
    Welcome5(),
    Welcome6(),
    Signup()
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
        scrollDirection: Axis.horizontal,
      )
    );
  }
}

// This is the welcome2 page
class Welcome2 extends StatefulWidget {
  Welcome2({Key? key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/bubble2.png")
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Image.asset('assets/images/spicelogo.png')
            ),
            Container(
              child: Image.asset('assets/images/worldillustration.png')
            ),
            Spacer(

            ),
            Container(
              width: 253,
              height: 58,
              child: Text("Find projects from companies everywhere in the word", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Red Hed Display", fontSize: 18, color: Colors.black ,fontWeight: FontWeight.w400))
            ),
            Container(
              margin: EdgeInsets.only(bottom: 80, top: 10),
              child: Image.asset('assets/images/1.png')
            )
          ]
        )
      )
    );
  }
}


// This is the welcome3 page

class Welcome3 extends StatefulWidget {
  Welcome3({Key? key}) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/images/bubbles3.png")
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/spicelogo.png'),

            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/money.png')
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Make money while working on awesome projects", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Red Hed Display", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black,))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),

                    child: Image.asset('assets/images/2.png')
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}

// Welcome4 page
class Welcome4 extends StatefulWidget {
  Welcome4({Key? key}) : super(key: key);

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/bubbles4.png')
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/spicelogo.png'),

            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/phone.png')
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Chat with others freelancers and develop your network",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Red Hed Display", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Image.asset('assets/images/3.png')
                  )

                  
                ]
              )
            ),
            
            
          ]
        )
      )
    );
  }
}


// Welcome5 page
class Welcome5 extends StatefulWidget {
  Welcome5({Key? key}) : super(key: key);

  @override
  State<Welcome5> createState() => _Welcome5State();
}

class _Welcome5State extends State<Welcome5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/bubbles5.png")
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/spicelogo.png')
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/up.png')
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Container(
                    child: Text("Work hard and level up!", style: TextStyle(fontFamily: "Red Hed Display", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Image.asset('assets/images/4.png')
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}


// Welcome6
class Welcome6 extends StatefulWidget {
  Welcome6({Key? key}) : super(key: key);

  @override
  State<Welcome6> createState() => _Welcome6State();
}

class _Welcome6State extends State<Welcome6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/bubbles6.png')
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Image.asset('assets/images/spicelogo.png')
            ),
            Container(
              child: Image.asset('assets/images/bigheart.png')
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text("Enjoy your progress", style: TextStyle(fontFamily: 'Red Hed Display', fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset('assets/images/6.png')
                  ),
                ]
              )
            )
          ]
        )
      )
    );

  }
}

// Login page in page
class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // TextField Controller 
  final email = TextEditingController();
  final password = TextEditingController();

  /// Essential function for login operations
  Future<void> checkSignin() async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signupbubble.png')
          )
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
              child: Text("Log In", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 27, fontWeight: FontWeight.w500, color: Colors.black))
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: GestureDetector(
                // To trigger the signin function
                onTap: () => checkSignin(),
                child: Container(
                  width: 263,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color.fromRGBO(147, 120, 255, 1)
                  ),
                  child: Center(
                    child: Text('Log-in', style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup())
                  );
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      TextSpan(
                        text: "Log-in",
                        style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)
                      )
                    ]
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

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  // TextField Controller
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  // Essential variable

  int errorindex = 0;
  List<String> errortexts = [
    "Please enter your firstname and lastname",
    "Please enter your email and password",
    "The password must be 8 length",
  ];
  bool error = false;

  // Essential functions 

  Future checkSignup() async {
    // Check if the information is null or not
    if (firstname.text.isNotEmpty && lastname.text.isNotEmpty) {
      if (email.text.isNotEmpty && password.text.isNotEmpty) {
        // Check length of the information
        if (password.text.length > 8) {
          await Database.signUp(firstname.text, lastname.text, email.text, password.text);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homescreen())
          );


        } else {
          setState(() {
            errorindex = 2;
            error = true;
          });
        }

      } else {
        setState(() {
          errorindex = 1;
          error = true;
        });
      }
    } else {
      setState(() {
        int index = 0;
        error = true;

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/signupbubble.png')
          )
        ),
        child: Column(
        
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
              child: Text("Sign up", style: TextStyle(fontFamily: "Red Hed Display", fontSize: 27, fontWeight: FontWeight.w500))
            ),
            Container(
              child: Column(
                
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        controller: firstname,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "First name",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        controller: lastname,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "Last name",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top:20),
                    
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    
                    child: SizedBox(
                      width: 295,
                      height: 52,
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(251, 238, 255, 1),
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(153, 135, 157, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          )
                        )
                      )
                    )
                  ),
                ]
              )

            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Visibility(
                visible: error,
                child: Text(errortexts[errorindex], style: TextStyle(fontFamily: "Red Hat Display", fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400))
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () => checkSignup(),
                      child: Container(
                        width: 263,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color.fromRGBO(147, 120, 255, 1),

                        ),
                        child: Center(
                          child: Text("Sign-Up", style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,))
                        )

                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 100, top: 25),

                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login())
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "You have an account? ",
                              style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)
                            ),
                            TextSpan(
                              text: "Log-in",
                              style: TextStyle(fontFamily: "Red Hat Display", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)
                            )
                          ]
                        )
                      )
                    )
                  ),
                ]
              )

            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Image.asset('assets/images/7.png')
            )
          ]
        )
      )
    ));
  }
}