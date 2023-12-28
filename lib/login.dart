import 'package:flutter/material.dart';
import 'package:pizzaro/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(padding: const EdgeInsets.all(32),
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Login",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32)),
        const SizedBox(height: 16,),
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Colors.grey.shade300),
          child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16),
                hintText: "Akun Email Atau Nomor HP",
              )),
        ),
        const SizedBox(height: 16,),
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Colors.grey.shade300),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(16),
            hintText: "Kata Sandi",
          )),
        ),
        const SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            // Pindah ke halaman lain
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>const HomePage()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 168, 0)),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text("Masuk", style: TextStyle(color: Colors.white)),
          ),
        ),
        const Text("Belum punya akun? Daftar")
      ]),
    )));
  }
}
