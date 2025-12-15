import 'package:flutter/material.dart';
import 'package:mychatroom/data/notifiers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ipController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: ipController,
                decoration: InputDecoration(hintText: 'Address:Port'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(hintText: 'Username'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  if (ipController.text.isEmpty &&
                      usernameController.text.isEmpty) {
                    print("Empty");
                  } else {
                    ipNotifier.value = ipController.text;
                    usernameNotifier.value = usernameController.text;

                    print(ipNotifier.value);
                    print(usernameNotifier.value);
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
