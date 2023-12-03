import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BidNest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(80, 208, 52, 41),
        title: Center(child: Text("BidNest")),
      ),
      body: Container(
        color: Color.fromARGB(70, 198, 222, 234),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: List.generate(
                5, // Adjust the number of houses as needed
                (index) => HouseContainer(index + 1), // HouseContainer with index + 1 as a unique identifier
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HouseContainer extends StatelessWidget {
  final int houseNumber;

  const HouseContainer(this.houseNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: (MediaQuery.of(context).size.width) - 50,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("House $houseNumber Details", style: TextStyle(fontSize: 20)),
          // Add more dummy house details as needed
          Text("Price: \$${(houseNumber * 1000)}"), // Dummy price based on house number

          ElevatedButton(
            onPressed: () {
              // Navigate to the place bid screen or perform any other action
              print("Placing bid for House $houseNumber");
            },
            child: Text("Place Bid"),
          ),
        ],
      ),
    );
  }
}
