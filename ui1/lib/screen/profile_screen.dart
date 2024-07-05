import 'package:flutter/material.dart';
import '../widget/task_screen.dart';
import '../widget/active_project.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Colors.amber[600],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.red),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                "data:image/png;base64,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",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      children: [
                        Text(
                          "Harish Babu",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Harish Babu",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Harish"),
          accountEmail: Text("abc@gmail.com"),
          currentAccountPicture: ClipOval(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "data:image/png;base64,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"),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
      ])),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Tasks",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent, shape: BoxShape.circle),
                    child: Icon(
                      Icons.message,
                      size: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TaskScreen(
                  color: Colors.red,
                  head: "To Do",
                  desc: "Exciting App",
                  icon: Icon(Icons.accessible_rounded)),
              SizedBox(
                height: 10,
              ),
              TaskScreen(
                  color: Colors.lightGreenAccent,
                  head: "To Do",
                  desc: "Exciting App",
                  icon: Icon(Icons.baby_changing_station)),
              SizedBox(
                height: 10,
              ),
              TaskScreen(
                  color: Color.fromRGBO(244, 216, 54, 1),
                  head: "To Do",
                  desc: "Exciting App",
                  icon: Icon(Icons.accessible_rounded)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Active Projects",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ActiveScreen(
                  head: "medical",
                  desc: "emergency",
                  color: Colors.teal,
                  percentage: 0.35,
                  pstr: "35%"),
                  SizedBox(height:20),
              ActiveScreen(
                  head: "medical",
                  desc: "emergency",
                  color: Colors.red,
                  percentage: 0.90,
                  pstr: "90%"),
            ],
          ),
        ),
      ),
    );
  }
}
