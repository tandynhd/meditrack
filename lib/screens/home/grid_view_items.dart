
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../models/category_collection.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    required this.categories,
  }) ;

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 16/9,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: categories.map((category) =>
            Container(
              // color: Colors.blue,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1A191D)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          category.icon,
                          Text('0'),
                        ],
                      ),
                      Text(category.name),
                    ],
                  ),
                )
            ),
        ).toList(),
      ),
    );
  }
}
