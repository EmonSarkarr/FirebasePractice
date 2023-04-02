import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size size;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(centerTitle: true,title: Text("Login Page")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: size.height / 5,
                width: size.width / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/logo1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Text(
                "Login",
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
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: size.width / 1.2,
                  child: Center(
                    child: Text("Login",
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
              const Text("this is error tv", style: TextStyle(color: Colors.red)),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                    "Or,Login With...",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
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
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(
                      text: "New user?",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                            text: "Are you want to",
                            style: TextStyle(fontSize: 20, color: Colors.black)),
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(color: Colors.green, fontSize: 25))
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
