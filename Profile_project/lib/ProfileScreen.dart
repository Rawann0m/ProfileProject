import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name = "Rawan";
  final String email = "rawan@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/10251366.jpg'),
                ),
                SizedBox(height: 15),
                Text(name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(email, style: TextStyle(fontSize: 16, color: Colors.grey[600])),

                SizedBox(height: 20),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.network(
                          'https://picsum.photos/200/300?grayscale',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return SizedBox.shrink();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text("Network Image", style: TextStyle(color: Colors.grey[700]))

              ],
            ),
          ),
        ),
      ),
    );
  }
}