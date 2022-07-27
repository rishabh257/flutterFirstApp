import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  String name = '';
  bool onTap = false;
  // $ bool isHover = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(
        () {
          onTap = true;
        },
      );

      await Future.delayed(Duration(milliseconds: 100));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(
        () {
          onTap = false;
        },
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        title: Title(color: Colors.cyan, child: Text('Catalog App')),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/loginImage.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                        maxLength: 12,
                        // $ textCapitalization: TextCapitalization.none,
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        // $ if (value.isEmpty) not working should work{
                        if (value == null || value.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length <= 8) {
                          return "Password should contain at least 8 characters.";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Material(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(onTap ? 50 : 8),
              child: InkWell(
                // onHover: ((value) {
                //   setState(() {
                //     isHover = true;
                //   });
                // }),
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: onTap ? 50 : 150,
                  height: onTap ? 50 : 40,
                  alignment: Alignment.center,
                  child: onTap
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    // );
  }
}
