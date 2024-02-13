import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),

      appBar: AppBar(
        title: Text("Edit Profile Page"),
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

            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.6435-9/117334484_3201226543292687_7293213547221234383_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=be3454&_nc_eui2=AeG8K23URGnLl-v9Q3LbBR9gALB9fWMlVGwAsH19YyVUbHK2mRFDvQgp4CGu3WUU4KF8w_B3SXha3qkl1oE-ORoj&_nc_ohc=N7N17S-2_awAX-4Bizi&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfDlgQUgNRm7weg4ePh0jlzr-RaFglfeJQNrlWCgCuavng&oe=659666BA"),
            ),

            SizedBox(height: 36),

            Text(
              "Username",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            Container(
              width: 240,
              height: 40,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "Grittamet Wilai",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),

            Container(
              width: 240,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: "grittamet.wila@bumail.net",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 8),

            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),

            Container(
              width: 240,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: "0986152663",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 8),

            Text(
              "Password",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(height: 8),

            Container(
              width: 240,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: "12345",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 64),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Menu');
              },
              child: Text("Update")
            ),

          ],
        ),
      ),
    );
  }
}
