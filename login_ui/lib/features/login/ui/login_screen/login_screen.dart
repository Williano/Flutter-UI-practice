import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0.0,
      ),
      body: Container(
          color: Colors.grey[300],
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.blue,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 230,
                    left: 30,
                    right: 30,
                    child: Center(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "WELCOME",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    letterSpacing: 2),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Form(
                                  child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                    labelText: "EMAIL",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                  )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "PASSWORD"),
                                  )
                                ],
                              )),
                            )
                          ],
                        ),
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height / 2.4,
                        width: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 520,
                      left: 150,
                      right: 150,
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: () => {},
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text(
                              "LOGIN",
                              style: TextStyle(letterSpacing: 2),
                            ),
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(59)),
                          ),
                        ),
                      )),
                ],
              ),
              Positioned(
                  top: 590,
                  left: 135,
                  right: 135,
                  child: Center(child: Text("Forgot password?")))
            ],
          )),
    );
  }
}
