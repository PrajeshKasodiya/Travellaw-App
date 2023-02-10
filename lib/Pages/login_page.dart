import 'package:flutter/material.dart';
import 'package:skyscanner/Pages/explore.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/LoginBackground.png"),
                fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20.0),
                      Center(
                        child: Container(
                          color: const Color.fromARGB(255, 25, 40, 77),
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/Travel.png",
                                color: Colors.lightBlueAccent,
                                height: 50,
                              ),
                              Container(
                                width: 10,
                              ),
                              const Text(
                                "TRAVELOGUE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.0),
                      const Center(
                          child: Text("Sign In",
                              style: TextStyle(
                                  color: Color(0xff333333), fontSize: 25.0))),
                      const SizedBox(height: 15.0),
                      const Text("Sign in with your email address",
                          style: TextStyle(color: Color(0xff333333))),
                      const SizedBox(height: 15.0),
                      TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(),
                            labelText: 'Email Address',
                            hintText: 'Email Address'),
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Please Enter Email Address";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Password'),
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Please Enter Password!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10.0),
                      const Text("Forgot your password?",
                          style: TextStyle(color: Color(0xff296ec6))),
                      const SizedBox(height: 15.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ExplorePage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff296ec6),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 38, vertical: 14),
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          child: const Text('Sign In'),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      //now
                    ],
                  )),
                ),
              ),
            ),
          ])),
    );
  }
}
