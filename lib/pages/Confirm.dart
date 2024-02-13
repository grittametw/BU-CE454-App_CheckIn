import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  State<Confirm> createState() => ConfirmState();
}

class ConfirmState extends State<Confirm> {
  
  @override
  Widget build(BuildContext context) {
    final String data = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      
      appBar: AppBar(
        title: Text("Confirm Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/CheckIn');
          },
        ),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 300,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 191, 191, 191),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [           
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "CheckIn\n"
                              "Confirm!",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 32),
                        
                            Text(
                              "$data",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(height: 40),

                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Success');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ), 
                              child: SizedBox(
                                width: 80,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Confirm",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/CheckIn');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ), 
                              child: SizedBox(
                                width: 80,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                  style: TextStyle(
                                    fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
