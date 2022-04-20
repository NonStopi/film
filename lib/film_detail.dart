import 'package:flutter/material.dart';
import 'film.dart';

class FilmDetail extends StatefulWidget {
  final Film film;

  const FilmDetail({Key? key, required this.film}) : super(key: key);

  @override
  _FilmDetailState createState() {
    return _FilmDetailState();
  }
}

class _FilmDetailState extends State<FilmDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image:
              AssetImage(widget.film.imageUrl)),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.film.label,
              style: const TextStyle(fontSize: 25, fontFamily: 'Anton'),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.film.descriptions.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.film.descriptions[index];
                  return Text('${ingredient.measure} ', style: TextStyle(fontSize: 20, fontFamily: 'Anton'),);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

