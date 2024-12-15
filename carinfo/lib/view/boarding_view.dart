import 'package:flutter/material.dart';
import 'login_view.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/logo.png',
              height: 190.0,
              width: 190.0,
            ),

            // Slogan
            const Text(
              'Discover Every Detail, Drive Every Dream',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 130, 129, 129),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 60.0),

            // Get Started Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: const Color(0xFF390050), // Button color
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
