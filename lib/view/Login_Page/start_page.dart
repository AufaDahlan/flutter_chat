import 'package:flutter_chat/view/Login_Page/fill_email.dart';
import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 115),
            Image.asset('assets/images/logo.png', height: 260, width: 260),
            SizedBox(height: 100),
            Text(
              'Selamat datang di DisApp',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 20),
            Text(
              'Dengan menggunakan aplikasi ini\nanda dapat melakukan obrolan\nmessenger yang digunakan untuk\nkeperluan dinas',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return fill_email();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3378FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                fixedSize: Size(350, 50),
              ),
              child: Text(
                'Mulai',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
