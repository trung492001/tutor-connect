import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Padding(
                //     padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                //     child: SizedBox(
                //         width: 250, child: Image.asset("asset/img/logo.png"))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ),
                      TextField(
                        style: TextStyle(fontSize: 15, color: Colors.grey[900]),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(13),
                              child: SvgPicture.asset("assets/svg/ic_email.svg",
                                  colorFilter: const ColorFilter.mode(
                                      Colors.black, BlendMode.srcIn),
                                  height: 12),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "abc@gmail.com"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text("Password",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800])),
                      ),
                      TextField(
                        style: TextStyle(fontSize: 15, color: Colors.grey[900]),
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(13),
                              child: SvgPicture.asset("assets/svg/ic_key.svg",
                                  colorFilter: const ColorFilter.mode(
                                      Colors.black, BlendMode.srcIn),
                                  height: 12),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "**********",
                            suffixIcon: IconButton(
                              splashColor: Colors.transparent,
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            const Text("Don't have account? ",
                                style: TextStyle(fontSize: 12)),
                            GestureDetector(
                                child: const Text("Sign up",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12)),
                                onTap: () {
                                  // Navigator.popAndPushNamed(context, routes.registerPage);
                                })
                          ],
                        ),
                        GestureDetector(
                            child: const Text("Forgot password?",
                                style: TextStyle(
                                    color: Color.fromRGBO(41, 121, 255, 1),
                                    fontSize: 12)),
                            onTap: () {
                              // Navigator.popAndPushNamed(context, routes.forgotPasswordPage);
                            })
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: FilledButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(5, 67, 173, 1)),
                          minimumSize:
                              MaterialStatePropertyAll(Size.fromHeight(50))),
                      child: const Text('Log In'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Main()));
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
