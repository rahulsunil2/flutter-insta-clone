import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/bubble_stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserHome(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Activities'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/instagram.png',
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.message),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            //Stories
            Container(
              height: 130,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                BubbleStories(
                  text: "Catalyst",
                  image: "catalyst",
                ),
                BubbleStories(
                  text: "MBCET",
                  image: "mbcet",
                ),
                BubbleStories(text: "IEDC", image: "iedc"),
                BubbleStories(text: "KSUM", image: "ksum"),
                BubbleStories(text: "IIC", image: "iic"),
                BubbleStories(text: "IPL", image: "ipl"),
              ]),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/catalyst.png',
                                  fit: BoxFit.contain,
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "catalystiedc",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.0, right: 4.0),
                                  child: Icon(Icons.favorite),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.0, right: 4.0),
                                  child: Icon(Icons.comment),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.0, right: 4.0),
                                  child: Icon(Icons.share),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4.0, right: 4.0),
                              child: Icon(Icons.bookmark),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8, top: 20),
                          child: Text(
                            "catalystiedc",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Flutter BootCamp",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
