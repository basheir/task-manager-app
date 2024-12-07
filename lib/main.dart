
import 'package:flutter/material.dart';
import 'package:task_app/features/auth/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.all(27),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 3
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3
                  ),
                  borderRadius: BorderRadius.circular(10)
              )

          ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,

            minimumSize: const Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const SignupPage(),
    );
  }
}

