import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  State<CheckIn> createState() => CheckInState();
}

class CheckInState extends State<CheckIn> {

  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  
  void navigateToConfirm(String data) {
    Navigator.pushNamed(context, '/Confirm', arguments: data);
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),

      appBar: AppBar(
        title: Text("CheckIn Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/Menu');
          },
        ),
      ),

      body: Center(
        child: Column(
          children: [

            Text(
              "Schedule",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: monday ? Icon(Icons.arrow_drop_up) : Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      monday = !monday;
                    });
                  },
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text(
                  "Tuesday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: tuesday ? Icon(Icons.arrow_drop_up) : Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      tuesday = !tuesday;
                    });
                  },
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wednesday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: Icon(wednesday
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      wednesday = !wednesday;
                      },
                    );
                  },
                ),
              ],
            ),

            if (wednesday)
            Container(
              width: 350,
              height: 96,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "12.00\n"
                              "14.20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),

                        Column(
                          children: [
                            SizedBox(height: 8),

                            Text(
                              "TH112 / 374A",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Foreign Languages\n"
                              "in Thai (LECT)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Room A7-108 / No. 60",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 34),
                        Icon(Icons.chevron_right),
                      ],
                    ),  
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text(
                  "Thursday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: thursday ? Icon(Icons.arrow_drop_up) : Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      thursday = !thursday;
                    });
                  },
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Friday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: Icon(friday ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      friday = !friday;
                    });
                  },
                ),

              ],
            ),

            if (friday)
            Container(
              width: 350,
              height: 96,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Confirm');
                  navigateToConfirm("CE454 / 436A\n"
                      "Mobile Application\n" 
                      "Development (LECT)\n"
                      "Room B4-305 / No. 28\n"
                      "08.40 - 11.00");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              "08.40\n"
                              "11.00\n"
                              "In time",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),

                        Column(
                          children: [
                            SizedBox(height: 8),

                            Text(
                              "CE454 / 436A",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Mobile Application\n"
                              "Development (LECT)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Room B4-305 / No. 28",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 36),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            if (friday)
            Container(
              width: 350,
              height: 96,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "12.40\n"
                              "15.40",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),

                        Column(
                          children: [
                            SizedBox(height: 8),

                            Text(
                              "CE481 / 436L",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Computer and Robotics\n" 
                              "Engineering Project I(PRAC)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Room B4-402 / No. 9",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        Icon(Icons.chevron_right),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Saturday",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),

                IconButton(
                  icon: Icon(saturday ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      saturday = !saturday;
                    });
                  },
                ),

              ],
            ),

            if (saturday)
            Container(
              width: 350,
              height: 96,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "08.40\n"
                              "11.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),

                        Column(
                          children: [
                            SizedBox(height: 8),

                            Text(
                              "MI469 / 436A",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "UX and UI Design (LECT)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Room B4-308 / No. 47",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 22),
                        Icon(Icons.chevron_right),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            if (saturday)
            Container(
              width: 350,
              height: 96,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "12.00\n"
                              "14.20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),

                        Column(
                          children: [
                            SizedBox(height: 8),

                            Text(
                              "EL454 / 435A",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Embedded System (LECT)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              "Room C2-508 / No. 37",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 14),
                        Icon(Icons.chevron_right),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

