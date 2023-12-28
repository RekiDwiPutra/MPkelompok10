import 'package:flutter/material.dart';
import 'package:pizzaro/add_pizza.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

// Kelas pembantu untuk membuat tampilan pizza di home
class HomePizzaItem extends StatelessWidget {
  // Konstruktor dengan nama, subtitle, dan harga
  final String name, subtitle, price, image;
  final Function onClick;

  const HomePizzaItem(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.price,
      required this.image,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(child: Image.asset(image)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start),
                Row(
                  children: [
                    const Icon(Icons.timer_sharp, color: Colors.grey, size: 14),
                    Text(subtitle,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                        textAlign: TextAlign.start),
                  ],
                ),
                Row(
                  children: [
                    Text(price,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.green),
                        textAlign: TextAlign.start),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                        width: 32,
                        height: 32,
                        child: ButtonTheme(
                            minWidth: 10,
                            child: ElevatedButton(
                              onPressed: () {
                                onClick();
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  elevation: 4,
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6)))),
                              child: const Icon(Icons.add,
                                  color: Colors.black, size: 16),
                            ))),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Halo",
                  textAlign: TextAlign.start,
                ),
                const Text("Selamat Datang!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: Colors.grey.shade300),
                        child: const TextField(
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(4),
                          icon: Padding(
                            padding: EdgeInsets.only(left: 16, top: 6),
                            child: Icon(Icons.search),
                          ),
                          hintText: "Pencarian",
                        )),
                      )),
                      const SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 255, 168, 0)),
                        child: const Padding(
                          padding: EdgeInsets.all(0),
                          child: Icon(Icons.filter_alt, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("All")),
                    const SizedBox(
                      width: 4,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text("Pizza",
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                HomePizzaItem(
                  name: "Pizza with Mushrooms",
                  subtitle: "14-20 minutes",
                  price: "Rp. 100.000",
                  image: "images/pizza_with_mushrooms.png",
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const AddPizzaPage()));
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                HomePizzaItem(
                    name: "Pepperoni Cheese Pizza",
                    subtitle: "18-25 minutes",
                    price: "Rp. 150.000",
                    image: "images/pepperoni_cheese_pizza.png",
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const AddPizzaPage()));
                    }),
              ],
            )));
  }
}
