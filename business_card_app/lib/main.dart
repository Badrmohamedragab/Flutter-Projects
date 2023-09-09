import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF274460),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 112,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/download.png'),
              ),
            ),
            Text(
              'Badr Mohamed',
              style: TextStyle(
                  fontFamily: 'Borel', fontSize: 32, color: Colors.white),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6C8090),
                  fontSize: 18),
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 2,
              indent: 60,
              endIndent: 60,
              height: 5,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.all(16),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF274460),
                ),
                title: Text(
                  '+0201023457530',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.email,
                        size: 32,
                        color: Color(0xFF274460),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'badrmohamedragab2003@gmail.com',
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
