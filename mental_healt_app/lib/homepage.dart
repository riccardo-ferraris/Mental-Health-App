import 'package:flutter/material.dart';
import 'package:mental_healt_app/components/emoticon_box.dart';
import 'package:mental_healt_app/components/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Ricky!',
                            style: TextStyle(
                              color: Colors.blue[50],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue[400],
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.blue[50],
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.blue[50],
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.blue[50],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EmoticonBox(emoji: '😞', title: 'Badly'),
                      EmoticonBox(emoji: '😊', title: 'Fine'),
                      EmoticonBox(emoji: '😁', title: 'Well'),
                      EmoticonBox(emoji: '😀', title: 'Excellent'),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 150.0,
                          vertical: 10,
                        ),
                        child: Divider(
                          thickness: 7,
                          color: Colors.grey[300],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.grey[800],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView(
                          children: const [
                            MyListTile(
                              title: 'Speaking skills',
                              subtitle: '16 exercises',
                              icon: Icons.favorite,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            MyListTile(
                              title: 'Reading speed',
                              subtitle: '8 exercises',
                              icon: Icons.access_time_outlined,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            MyListTile(
                              title: 'Lorem Ipsum',
                              subtitle: 'Dolor sit amet',
                              icon: Icons.accessibility_new,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      )
                    ],
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
