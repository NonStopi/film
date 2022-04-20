import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'film.dart';

class CategoryDetail extends StatefulWidget {
  final Category1 category;

  const CategoryDetail({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryDetailState createState() {
    return _CategoryDetailState();
  }
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    if (widget.category.category1 == 'Комедия') {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.category.category1),
        ),
        body: SafeArea(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: buildFilmCard1(Film.samples[index]),
              );
            },
          ),
        ),
      );
    } else if (widget.category.category1 == 'Фэнтези') {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.category.category1),
        ),
        body: SafeArea(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: buildFilmCard2(Film.samples[index]),
              );
            },
          ),
        ),
      );
    }
    return Text('');
  }

  Widget buildFilmCard1(Film film) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Column(
          children: [
            Image(
              image: AssetImage(Film.samples[0].imageUrl),
              height: 140,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(Film.samples[0].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Film.samples[0].categorys,
              style: TextStyle(fontFamily: 'Anton'),
            ),
          ],
        ),
        Container(
          width: 10,
        ),
        Column(
          children: [
            Image(
              image: AssetImage(Film.samples[2].imageUrl),
              height: 140,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(Film.samples[2].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Film.samples[2].categorys,
              style: TextStyle(fontFamily: 'Anton'),
            ),
          ],
        ),
      ]),
    );
  }

  Widget buildFilmCard2(Film film) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Column(
          children: [
            Image(
              image: AssetImage(Film.samples[1].imageUrl),
              height: 140,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(Film.samples[1].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Film.samples[1].categorys,
              style: TextStyle(fontFamily: 'Anton'),
            ),
          ],
        ),
      ]),
    );
  }
}
