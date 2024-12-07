import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    formkey.currentState!.validate();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
                validator: (value) {
                  if(value == null || value.trim().isEmpty){
                    return 'Name field cannot be empty';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
                validator: (value) {
                  if(value == null || value.trim().isEmpty || value.contains("@")){
                    return 'Email is invalid';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              RichText(text: TextSpan(text: "Already have an account?",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                TextSpan(text: 'Sign In')
              ],
              ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
