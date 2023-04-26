import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Scaffold could have been used but it doesn't contain background image property
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover // to make inmage fit on screen
              )),
      child: Scaffold(
        // Scaffold color white by default
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 35, top: 130), // giving space to text
              child: Text(
                'Welcome\nBack ',
                style: TextStyle(color: Colors.black, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              // wrap used here
              child: Container(
                padding: EdgeInsets.only(
                    // 0.5 used to show on half length of screen
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left:
                        35), // it's returning size of device screen(basically we want this to adjust on any size of screen)
                child: Column(
                  //column is used as 2 Text fields are required
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText:
                              'Email', // shows the type of text to be written
                          border: OutlineInputBorder(
                              // makes curved border text field
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      // to add space between the 2 text fields
                      height: 30,
                    ),
                    TextField(
                      obscureText:
                          true, //the text written in field will be hidden
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText:
                              'Password', // shows the type of text to be written
                          border: OutlineInputBorder(
                              // makes curved border TextField
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      // to provide distance between text field and text
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, //space between arrow and text
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 27,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          //arrow button
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      // to provide distance between sign in and sign up
                      height: 40,
                    ),
                    Row(
                      // sign up text
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
