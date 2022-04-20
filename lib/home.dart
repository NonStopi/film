import 'package:flutter/material.dart';
import 'category_page.dart';
import 'film.dart';
import 'film_detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with myhomepage
    MyHomePage(),
    CategoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Фильмы',
          style: TextStyle(fontFamily: 'Anton'),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Все фильмы',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Категории',
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: Film.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FilmDetail(film: Film.samples[index]);
                    },
                  ),
                );
              },
              child: buildFilmCard(Film.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildFilmCard(Film film) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: ClipRRect(
          child: Image.asset(film.imageUrl, fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
        )),
        const SizedBox(
          height: 10,
        ),
        Text(film.label,
            maxLines: 1, style: TextStyle(fontSize: 30, color: Colors.green)),
        Text(
          film.categorys,
          style: TextStyle(fontFamily: 'Anton', fontSize: 25),
        ),
      ]),
    );
  }
}
