
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/left.png'),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/top.png'),
              ),
              const SizedBox(height: 30),
              const Text(
                "HELLO",
                style: TextStyle(fontSize: 56, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 30),
              const Text("Sign in to your account", style: TextStyle(fontSize: 20)),
              MyContainer(icon: Icons.person, hintText: "Username", controller: usernameController),
              MyContainer(icon: Icons.lock, hintText: "Password", controller: passwordController),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      print("Forgot password");
                    },
                    child: const Text(
                      "Forgot your password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
              const SizedBox(height: 20),
              const Spacer(flex: 3),
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      print("Username: ${usernameController.text}");
                      print("Password: ${passwordController.text}");
                    },
                    child: Container(
                      height: 44,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF679794), Color(0xFF623AA2)],
                          transform: GradientRotation(0.8),
                        ),
                      ),
                      child: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
              const Spacer(flex: 4),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      print("Create an account");
                    },
                    child: const Text(
                      "CREATE",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextEditingController controller;

  const MyContainer({
    required this.icon,
    required this.hintText,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color(0x18000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(icon, color: Colors.grey),
          ),
          Expanded(
            child: Center(
              child: TextField(
                controller: controller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
