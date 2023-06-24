import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final TextEditingController _firstName = TextEditingController();
final TextEditingController _lastName = TextEditingController();
final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();
final TextEditingController _cpassword = TextEditingController();
void _showDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return (AlertDialog(
          title: const Text("Form Data"),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("First Name: ${_firstName.text}"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Last Name: ${_lastName.text}"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Email: ${_email.text}"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Password: ${_password.text}"),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("Confirm Password: ${_cpassword.text}"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"))
          ],
        ));
      });
}

bool hidePassword = false;
bool hideConfirmPassword = false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, top: 20, right: 10, bottom: 10),
                        child: Text("Sign Up",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w900)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 10, bottom: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: _firstName,
                            decoration: const InputDecoration(
                              labelText: "Enter First Name",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 10, bottom: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: _lastName,
                            decoration: const InputDecoration(
                              labelText: "Enter Last Name",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 10, bottom: 10),
                          child: TextFormField(
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: "Enter Email",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 10, bottom: 10),
                          child: TextFormField(
                            controller: _password,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                              labelText: "Enter Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      hidePassword = !hidePassword;
                                    });
                                  },
                                  icon: Icon(hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 10, bottom: 10),
                          child: TextFormField(
                            controller: _cpassword,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: hideConfirmPassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      hideConfirmPassword =
                                          !hideConfirmPassword;
                                    });
                                  },
                                  icon: Icon(hideConfirmPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              labelText: "Enter Confirm Password",
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 20, right: 10, bottom: 10),
                        child: ElevatedButton(
                            onPressed: () {
                              _showDialog(context);
                            },
                            style: const ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))))),
                            child: const Text("Sign Up")),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
