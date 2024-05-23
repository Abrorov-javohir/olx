// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tile(),
    );
  }
}

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  // ignore: library_private_types_in_public_api
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

  final List<Map<String, String>> _cars = [
    {
      "image": "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg",
      "name": "Chevrolet Cobalt 2024",
      "price": "133 598 000 сум"
    },
    {
      "image": "https://car24.uz/wp-content/uploads/2024/01/22.webp",
      "name": "Chevrolet Lacetti Gentra 2024",
      "price": "143 634 000 сум"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU",
      "name": "Chevrolet Malibu 2024",
      "price": "419 000 960 сум"
    },
    {
      "image":
          "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg",
      "name": "Chevrolet Tracker 2024",
      "price": "285 834 080 сум"
    },
    {
      "image":
          "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg",
      "name": "Chevrolet Matiz 2024",
      "price": "20 000 000 сум"
    },
    {
      "image":
          "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png",
      "name": "Chevrolet KIA 2024",
      "price": "317 900 000 сум"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _filteredCars = _cars
        .where((car) =>
            car["name"]!.toLowerCase().contains(_searchIndex.toLowerCase()))
        .toList();
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
              children: _filteredCars.map((car) {
                return Card(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(car["image"]!),
                        Text(car["name"]!),
                        Text(car["price"]!)
                      ],
                    ),
                  ),
                );
              }).toList(),
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
  // ignore: library_private_types_in_public_api
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

  final List<Map<String, String>> _cars = [
    {
      "image": "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg",
      "name": "Chevrolet Cobalt 2024",
      "price": "133 598 000 сум"
    },
    {
      "image": "https://car24.uz/wp-content/uploads/2024/01/22.webp",
      "name": "Chevrolet Lacetti Gentra 2024",
      "price": "143 634 000 сум"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU",
      "name": "Chevrolet Malibu 2024",
      "price": "419 000 960 сум"
    },
    {
      "image":
          "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg",
      "name": "Chevrolet Tracker 2024",
      "price": "285 834 080 сум"
    },
    {
      "image":
          "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg",
      "name": "Chevrolet Matiz 2024",
      "price": "20 000 000 сум"
    },
    {
      "image":
          "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png",
      "name": "Chevrolet KIA 2024",
      "price": "317 900 000 сум"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _filteredCars = _cars
        .where((car) =>
            car["name"]!.toLowerCase().contains(_searchIndex.toLowerCase()))
        .toList();
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const list()));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Group()));
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
                children: _filteredCars.map((car) {
                  return Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(car["image"]!),
                          Text(car["name"]!),
                          Text(car["price"]!)
                        ],
                      ),
                    ),
                  );
                }).toList(),
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
  // ignore: library_private_types_in_public_api
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

  final List<Map<String, String>> _cars = [
    {
      "image": "https://lionmotors.uz/wp-content/uploads/2020/11/cobalt3.jpg",
      "name": "Chevrolet Cobalt 2024",
      "price": "133 598 000 сум"
    },
    {
      "image": "https://car24.uz/wp-content/uploads/2024/01/22.webp",
      "name": "Chevrolet Lacetti Gentra 2024",
      "price": "143 634 000 сум"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoaZzamHzH0LyHpEjbSMgtknr9mOysfz-VLON_Q6GBJHxXICnE3hMXQwOADzmuKIo-5DM&usqp=CAU",
      "name": "Chevrolet Malibu 2024",
      "price": "419 000 960 сум"
    },
    {
      "image":
          "https://biznesrivoj-images.s3.eu-north-1.amazonaws.com/n5_ad2843b13c.jpg",
      "name": "Chevrolet Tracker 2024",
      "price": "285 834 080 сум"
    },
    {
      "image":
          "https://daryo.uz/cache/2015/06/339_26_model_gallery_original-680x493-680x493.jpg",
      "name": "Chevrolet Matiz 2024",
      "price": "20 000 000 сум"
    },
    {
      "image":
          "https://cdn.kia-motors.uz/uz/uploads/articles/1736/article-original.png",
      "name": "Chevrolet KIA 2024",
      "price": "317 900 000 сум"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _filteredCars = _cars
        .where((car) =>
            car["name"]!.toLowerCase().contains(_searchIndex.toLowerCase()))
        .toList();
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: _filteredCars.map((car) {
                  return Card(
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.network(car["image"]!),
                          Text(car["name"]!),
                          Text(car["price"]!)
                        ],
                      ),
                    ),
                  );
                }).toList(),
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
}
