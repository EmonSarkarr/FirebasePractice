import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late Size size;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height / 5,
              width: size.width / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/logo2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onTap: () {},
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email or Password",
                    labelText: "Email or PhoneNumber"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onTap: () {},
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          passwordController.clear();
                        },
                        icon: const Icon(Icons.cancel)),
                    hintText: "Enter Your Password",
                    labelText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onTap: () {},
                controller: fullNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    hintText: "Enter Your FullName",
                    labelText: "FullName"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: size.width / 1.2,
                child: Center(
                  child: Text("Register",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: size.height / 12,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.transparent),
                      child: const ClipRRect(
                          child: Icon(Icons.g_mobiledata_rounded, size: 50))),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: size.height / 12,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.transparent),
                      child: const ClipRRect(
                          child: Icon(Icons.facebook, size: 50))),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: size.height / 12,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.transparent),
                      child:
                          const ClipRRect(child: Icon(Icons.apple, size: 50))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
