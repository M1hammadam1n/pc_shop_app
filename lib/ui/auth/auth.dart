import 'dart:ui';

import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const AuthBody(),
        resizeToAvoidBottomInset:
            false, // Для адаптации при открытии клавиатуры
      ),
    );
  }
}

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image with blur
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg-auth.png'), // Укажите путь к изображению
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Размытие
            child: Container(
              color: Colors.black
                  .withOpacity(0.2), // Полупрозрачный слой поверх изображения
            ),
          ),
        ),
        // Foreground content
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             const   SizedBox(height: 150),
                const Text(
                  "Auth",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                // Login
                const Row(
                  children: [
                     Padding(padding: EdgeInsets.only(left: 24)),
                    Text('Login',style: TextStyle(color: Colors.white,fontSize: 22),),

                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Login',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.amber, width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                // Password
                const SizedBox(height: 10),
               const Row(
                  children: [
                     Padding(padding: EdgeInsets.only(left: 24)),
                    Text('Password',style: TextStyle(color: Colors.white,fontSize: 22),),

                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.amber, width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Forgot Password and Create Account
                SizedBox(
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Create account",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // Login Button
                SizedBox(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                // const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit: BoxFit.cover,
                            height: 24,
                            width: 24,
                          ),
                          const Text(
                            "Sign in with Google        ",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               const Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text('2025'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
