import 'package:flutter/material.dart';

class fill_email extends StatefulWidget {
  @override
  State<fill_email> createState() => _fill_emailState();
}

class _fill_emailState extends State<fill_email> {
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _otpContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailContoller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter email",
                labelText: "Email",
                suffixIcon: TextButton(
                  child: Text("Send OTP"),
                  onPressed: () => (),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: _otpContoller,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter OTP",
                labelText: "OTP",
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(child: Text("Verify OTP"), onPressed: () => ()),
          ],
        ),
      ),
    );
  }
}
