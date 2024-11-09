import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travell_app/Second_Page.dart';
import 'package:travell_app/Welcome_Page.dart';

import 'my_database.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  GlobalKey<FormState> _validationKey = GlobalKey();
  bool passToggle = true;
  bool emailValid = true;

  Future<void> setPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String Email='';
    pref.setString("Email", Email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              child: Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/login2.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Container(
            //     alignment: Alignment.topCenter,
            //     child: Text(
            //       "Welcome to Travelling App",
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
            //     ),
            //   ),
            // ),
            Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  child: Form(
                    key: _formfield,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(labelStyle: TextStyle(
                              color: Colors.white),
                            labelText: "Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email_sharp, color: Colors.white,),
                          ),
                          validator: (value) {
                            bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value!.isEmpty) {
                              return "Enter Email";
                            } else if (!emailValid) {
                              return "Enter Valid Email";
                            }
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: passController,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: "Password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock, color: Colors.white,),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(passToggle
                                  ? Icons.visibility_sharp
                                  : Icons.visibility_off),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            } else if (passController.text.length < 6) {
                              return "Password length Should be more than 6 characters ";
                            }
                          },
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        InkWell(
                          onTap: () {
                            if (_formfield.currentState!.validate()) {
                              emailController.clear();
                              passController.clear();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondPage()),
                              );
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            ),
                            TextButton(
                              onPressed:() async {
                                SharedPreferences pref =
                                await SharedPreferences.getInstance();
                                await pref.setBool('IsUserLogin', true);
                                await pref.setString('Email', 'abc123@gmail.com');
                                await pref.setString('Password', 'abc123');
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SecondPage();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlert(ctx, title, id) {
    showCupertinoDialog(
      context: ctx,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title),
          actions: [
            TextButton(
                onPressed: () {
                  if (id >= 1) {
                    Navigator.of(ctx).pop();
                    Navigator.of(ctx).pop();
                  } else {
                    Navigator.pop(ctx);
                  }
                },
                child: Text('Ok'))
          ],
        );
      },
    );
  }
}
