import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Pesanan: ",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
        Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset("images/pizza_with_mushrooms.png"),
                  title: Text("Pizza with Mushrooms"),
                  subtitle: Text("Rp. 100.000 x 1"),
                ),
                ListTile(
                  leading: Image.asset("images/pepperoni_cheese_pizza.png"),
                  title: Text("Pepperoni Cheese Pizza"),
                  subtitle: Text("Rp. 150.000 x 1"),
                ),
              ],
            ),
            ),
        ElevatedButton(
          onPressed: () {
            // Pindah ke halaman lain
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>const HomePage()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 168, 0)),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text("Checkout", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ));
  }
}
