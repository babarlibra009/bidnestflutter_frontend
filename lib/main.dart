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
      home: const AddHouseScreen(),
    );
  }
}

class AddHouseScreen extends StatelessWidget {
  const AddHouseScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(80, 208, 52, 41),
        title: Text("BidNest"),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the screen for adding a new house or perform any other action
              print("Adding New House");
            },
            icon: Icon(Icons.add),
          ),
        ],
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
      height: 250,
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
              // Navigate to the edit house screen or perform any other action
              print("Editing House $houseNumber");
            },
            child: Text("Edit"),
          ),

          ElevatedButton(
            onPressed: () {
              // Perform delete functionality or navigate to a confirmation screen
              print("Deleting House $houseNumber");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: Text("Delete"),
          ),
        ],
      ),
    );
  }
}
