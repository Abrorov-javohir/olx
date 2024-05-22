import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tile(),
    );
  }
}

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  int _selectedIndex = 0;
  String _searchIndex = "";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('We found more 1000 news'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: const Text("Tile"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: const Text("List"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const list()));
                  },
                ),
                PopupMenuItem(
                  child: const Text("Gallery"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Group()));
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) => setState(() {
              _searchIndex = value;
            }),
            decoration: InputDecoration(
              labelText: "Search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg"),
                        const Text("Chevrolet Cobalt 2024"),
                        const Text("133 598 000 сум")
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://car24.uz/wp-content/uploads/2024/01/22.webp"),
                        const Text("Chevrolet Lacetti Gentra 2024"),
                        const Text("143 634 000 сум")
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU"),
                        const Text("Chevrolet Malibu 2024"),
                        const Text("419 000 960 сум")
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg"),
                        const Text("Chevrolet Tracker 2024"),
                        const Text("285 834 080 сум")
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg"),
                        const Text("Chevrolet Matiz 2024"),
                        const Text("20 000 000 сум")
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png"),
                        const Text("Chevrolet KIA 2024"),
                        const Text("317 900 000 сум")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Favourites',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_outlined, color: Colors.black),
            label: 'Create',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black),
            label: 'Message',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class list extends StatefulWidget {
  const list({super.key});

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  int _selectedIndex = 0;
  String _searchIndex = "";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('We found more 1000 news'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sort),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    child: const Text("tile"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => list()));
                    },
                  ),
                  PopupMenuItem(
                    child: const Text("list"),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: const Text("gallary"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Group()));
                    },
                  ),
                ];
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => setState(() {
                _searchIndex = value;
              }),
              decoration: InputDecoration(
                labelText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg"),
                          const Text(
                            "Chevrolet Cobalt 2024",
                          ),
                          const Text("133 598 000 сум")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://car24.uz/wp-content/uploads/2024/01/22.webp"),
                          const Text(
                            "Chevrolet Lacetti Gentra 2024",
                          ),
                          const Text("143 634 000 сум")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU"),
                          const Text(
                            "Chevrolet Malibu 2024",
                          ),
                          const Text("419 000 960 сум")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg"),
                          const Text(
                            "Chevrolet Tracker 2024",
                          ),
                          const Text("285 834 080 сум")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg"),
                          const Text(
                            "Chevrolet Matiz 2024",
                          ),
                          const Text("20 000 000 сум")
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(
                              "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png"),
                          const Text(
                            "Chevrolet KIA 2024",
                          ),
                          const Text("317 900 000 сум")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Favourites',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add_outlined,
                color: Colors.black,
              ),
              label: 'Create',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
              label: 'Message',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  int _selectedIndex = 0;
  String _searchIndex = "";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('We found more 1000 news'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: const Text("Tile"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Tile()));
                  },
                ),
                PopupMenuItem(
                  child: const Text("List"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const list()));
                  },
                ),
                PopupMenuItem(
                  child: const Text("Group"),
                  onTap: () {},
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) => setState(() {
                _searchIndex = value;
              }),
              decoration: InputDecoration(
                labelText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard(
                    "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg",
                    "Chevrolet Cobalt 2024",
                    "133 598 000 сум",
                  ),
                  _buildCard(
                    "https://car24.uz/wp-content/uploads/2024/01/22.webp",
                    "Chevrolet Lacetti Gentra 2024",
                    "143 634 000 сум",
                  ),
                  _buildCard(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU",
                    "Chevrolet Malibu 2024",
                    "419 000 960 сум",
                  ),
                  _buildCard(
                    "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg",
                    "Chevrolet Tracker 2024",
                    "285 834 080 сум",
                  ),
                  _buildCard(
                    "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg",
                    "Chevrolet Matiz 2024",
                    "20 000 000 сум",
                  ),
                  _buildCard(
                    "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png",
                    "Chevrolet KIA 2024",
                    "317 900 000 сум",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Favourites',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_outlined, color: Colors.black),
            label: 'Create',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black),
            label: 'Message',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildCard(String imageUrl, String title, String price) {
    return Card(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(price),
          ],
        ),
      ),
    );
  }
}
