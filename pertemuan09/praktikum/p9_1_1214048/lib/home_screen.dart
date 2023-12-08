import 'package:flutter/material.dart';
import 'package:p9_1_1214048/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  late SharedPreferences loginData;
  String username = '';
  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username').toString();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: Column(
            children: [
              const Text('Welcome to Home'),
              const SizedBox(height: 20),
              Text(username),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  loginData.setBool('login', true);
                  loginData.remove('username');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
