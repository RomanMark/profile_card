import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ProfileCard()));
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "Roman Markilov";
    const String position = "Flutter Developer";
    const String location = "Tallinn,Estonia";
    const String email = "romanmarkilov@gmail.com";
    const String phone = "+37256381344";

    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
                child: Column(
                  children: [
                    SizedBox(height: 250),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(position, style: TextStyle(fontSize: 20)),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text(email), Text(location), Text(phone)],
                    ),
                  ],
                ),
            ),
            const Positioned(
              top: 100,
              left: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage(AutofillHints.addressCity),
                radius: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
