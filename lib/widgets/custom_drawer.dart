import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 255, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/76/8b/15/768b15a2ef38c93c4ccfc272ec9db98b.jpg",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Windah Basudara",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "windahbasudara@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
          ListTile(leading: Icon(Icons.home), title: Text("Beranda")),
          ListTile(leading: Icon(Icons.person), title: Text("Profile")),
          ListTile(leading: Icon(Icons.settings), title: Text("Pengaturan")),
        ],
      ),
    );
  }
}
