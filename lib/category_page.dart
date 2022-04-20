import 'package:flutter/material.dart';
import 'film.dart';
import 'category_detail.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: Category1.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return CategoryDetail(category: Category1.samples[index]);
                    },
                  ),
                );
              },
              child: buildCategoryCard(Category1.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildCategoryCard(Category1 category) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(category.url),
                height: 380,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              category.category1,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Anton',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
