import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(
            "assets/images/loginImage.png",
            fit: BoxFit.cover,
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // Text(
          //   "Welcome",
          //   style: TextStyle(
          //     fontSize: 25,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("Button Clicked");
            },
          )
        ],
      ),
    );
  }
}
