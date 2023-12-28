import 'package:flutter/material.dart';

class AddPizzaPage extends StatefulWidget {
  const AddPizzaPage({super.key});

  @override
  State<AddPizzaPage> createState() => _AddPizzaPageState();
}

class _AddPizzaPageState extends State<AddPizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Pizza with Mushrooms",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          Image.asset("images/pizza_with_mushrooms.png"),
          Text(
            "Pilih Ukuran",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("8 inch")),
              const SizedBox(
                width: 4,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text("20 inch",
                      style: TextStyle(color: Colors.white))),
              const SizedBox(
                width: 4,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("32 inch")),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(8),
              color: const Color.fromARGB(255, 67, 67, 67),
              child: Row(
                children: [
                  MaterialButton(
                      onPressed: () {},
                      child: Text("-",
                          style: TextStyle(fontSize: 24, color: Colors.white))),
                  Text("1",
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  MaterialButton(
                      onPressed: () {},
                      child: Text("+",
                          style: TextStyle(fontSize: 24, color: Colors.white))),
                ],
              ),
            )
          ]),
          Expanded(
            child: Container(),
          ),
          Padding(padding: EdgeInsets.all(32), child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Harga"),
                    Text("Rp. 100.000"),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Tambah"))
            ],
          ))
        ],
      ),
    );
  }
}
