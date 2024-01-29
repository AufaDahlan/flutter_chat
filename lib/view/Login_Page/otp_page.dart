import 'package:flutter/material.dart';

class otp_page extends StatefulWidget {
  const otp_page({super.key});

  @override
  State<otp_page> createState() => _otp_pagelState();
}

class _otp_pagelState extends State<otp_page> {
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              'assets/icons/back.png',
              width: 30,
              height: 30,
            ),
          ),
        ),
        title: Text(
          'Alamat email',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            'Tambahkan email anda',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Schyler',
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'DisApp perlu memveritifikasi akun anda',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Kami akan mengirimkan kode veritifikasi ke alamat email ini',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return otp_page();
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
              'Kirim OTP',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
