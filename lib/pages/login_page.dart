import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginTapped = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(children: [
        Image.asset('assets/images/login_img.png',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width * 0.5),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.center,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Welcome',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: 'UserName',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    onChanged: (txt) => {},
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 30),
                  // =====commented it because making a custom cutton==
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, AppRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(
                  //       minimumSize: Size(150, 40),
                  //       backgroundColor:
                  //           const Color.fromARGB(255, 86, 130, 226)),
                  //   child: const Text(
                  //     ' Login ',
                  //     style: TextStyle(fontSize: 15),
                  //   ),
                  // )
                  // ======end====
                  InkWell(
                    onTap: () async {
                      setState(() => {loginTapped = !loginTapped});
                      await Future.delayed(const Duration(seconds: 1));
                      print("context is ${context.mounted}");
                      if (!context.mounted) return;
                      Navigator.pushNamed(context, AppRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.center,
                        width: loginTapped ? 150 : 50,
                        height: loginTapped ? 40 : 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(220, 26, 102, 216),
                          borderRadius:
                              BorderRadius.circular(loginTapped ? 10 : 100),
                          // shape: loginTapped
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle
                        ),
                        child: loginTapped
                            ? const Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              )
                            : const Icon(Icons.done, color: Colors.white)),
                  )
                ]),
          ),
        )
      ]),
    );
  }
}
