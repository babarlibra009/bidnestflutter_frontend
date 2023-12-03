import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ?dropdownvalue;
  List<String> items=['Admin','User'];

  var PIN=TextEditingController();
   var NewPasssword=TextEditingController();
  var password=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(80, 208, 52, 41),

        
        title: Center(child: Text("BidNest")),
        
      ),
      // int this lab i did list view , circling image , custom font
      body:
      Container(
        color: Color.fromARGB(70, 198, 222, 234),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
             margin: EdgeInsets.all(100),
             width: (MediaQuery. of(context). size. width)-50,
              height: 500,
              
              child: Column(
                children: [
                  
                  Text("RESET PASSWORD ", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),


                  Container(height: 20,),
                  Text("PIN CODE"),
            
                  
                    TextField(
                      controller: PIN,
                      decoration: InputDecoration(
                        hintText: "Enter PIN",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                           
                            width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(251, 97, 233, 101),
                            width: 2
                          )
                        )
                      ),
                    ),
            
          
                  Container(height: 20,),
                  Text("NEW PASSWORD"),
            
                  
                    TextField(
                      controller: NewPasssword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "NEW PASSWORD",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                           
                            width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(251, 97, 233, 101),
                            width: 2
                          )
                        )
                      ),
                    ),
            
            
                  Container(height: 20,),
                  Text("CONFIRM PASSWORD"),
                  
                  TextField(
                    // keyboardType: TextInputType.number, can change key bord from here
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "CONFIRM PASSWORD ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                          ),
                          ),
                          // enabledBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20),
                          // borderSide: BorderSide(
                          //   color: Colors.blue,
                          //   width: 2
                          // ),
                          // ),
                        
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(251, 97, 233, 101),
                            width: 2
                          )
                        )
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    
                    child: ElevatedButton(
                       style: const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(173, 95, 209, 99)),

  ),
                    
                      onPressed:(){ 
                        String a = PIN.text.toString();
                        String b= NewPasssword.text.toString();
                         String c = password.text.toString();
                         print("Your pin $a and your new password is $b and confirem password is $c");},
                     child: Text("SUBMIT"),
                    ),
                  ),
                 
                  
                ],
              ),
            ),
          ),
        ),
      )
     
    );
  }
}