import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int tabIndex = 0;

  final tabItems = [Home(), Shorts(), Add(), Subscriptions(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom bar task", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: tabItems[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: tabIndex,
        elevation: 0,
        onTap: (value) {
          setState(() {
            tabIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 22), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection,
                size: 22,
              ),
              label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 22), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined, size: 22),
              label: "Subscriptions"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 22), label: "profile"),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height - 30,
            width: MediaQuery.sizeOf(context).width - 30,
            child: Image.network(
                "https://media.istockphoto.com/id/1550071750/photo/green-tea-tree-leaves-camellia-sinensis-in-organic-farm-sunlight-fresh-young-tender-bud.jpg?s=612x612&w=0&k=20&c=RC_xD5DY5qPH_hpqeOY1g1pM6bJgGJSssWYjVIvvoLw=",
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
            itemCount: 30,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 15,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: MediaQuery.sizeOf(context).width - 30,
                child: ClipRRect(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Container(
              height: MediaQuery.sizeOf(context).height - 30,
              width: MediaQuery.sizeOf(context).width - 30,
              child: ClipRRect(
                child: Image.network(
                    "https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg"),
              )),
        ),
      ),
    );
  }
}

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text("This is a Subscription page"),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/032/400/914/non_2x/charming-cute-3d-cartoon-girl-generate-ai-photo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Text("Sai Sri Satti\nFemale\nsaisri@ytbx")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.history),
            tileColor: Color.fromARGB(255, 235, 234, 234),
            title: Text(
              "History",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
              leading: Icon(Icons.thumb_up),
              tileColor: Color.fromARGB(255, 235, 234, 234),
              title: Text("Liked Videos")),
          SizedBox(
            height: 5,
          ),
          ListTile(
              leading: Icon(Icons.watch_later),
              tileColor: Color.fromARGB(255, 235, 234, 234),
              title: Text("Watch Later Videos")),
          SizedBox(
            height: 5,
          ),
          ListTile(
              leading: Icon(Icons.playlist_add),
              tileColor: Color.fromARGB(255, 235, 234, 234),
              title: Text("Play List"))
        ],
      ),
    ));
  }
}
