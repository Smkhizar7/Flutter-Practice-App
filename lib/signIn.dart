import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  // const ({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _State();
}

bool hidePassword = false;
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
String _emilText = '';
String _passText = '';

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Login in'),
        content: Column(children: [
          Text('Email :       $_emilText'),
          Text('password:     $_passText'),
        ]),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}

class _State extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My First App"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                foregroundDecoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 0),
                      spreadRadius: double.infinity)
                ]),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      spreadRadius: double.infinity,
                      blurRadius: double.infinity,
                      offset: Offset(2, 2),
                      blurStyle: BlurStyle.solid)
                ]),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 0, right: 0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 0, right: 0),
                            child: TextField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.email_rounded),
                                    label: const Text("Email:"),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      // borderSide: BorderSide(
                                      //     style: BorderStyle.solid,
                                      //     color: Color.fromRGBO(
                                      //         255, 0, 0, 1))
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 0, right: 0),
                            child: TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: hidePassword,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            hidePassword = !hidePassword;
                                          });
                                        },
                                        icon: Icon(hidePassword
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    label: const Text("Password:"),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      // borderSide: BorderSide(
                                      //     style: BorderStyle.solid,
                                      //     color: Color.fromRGBO(
                                      //         255, 0, 0, 1))
                                    ))),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _emilText = _emailController.text.toString();
                                _passText = _passwordController.text.toString();
                              });
                              _showDialog(context);
                            },
                            child: const Text("Login",
                                style: TextStyle(fontSize: 18)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Container(
                          //   height: 100,
                          //   width: 300,
                          //   color: Colors.amber,
                          //   child: Column(
                          //     children: [
                          //       Text('Email :       $_emilText'),
                          //       Text('password:     $_passText'),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
