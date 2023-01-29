

import 'package:flutter/material.dart';

class   categoryGridView extends StatelessWidget {
Category category;
int index;
categoryGridView({required this.category, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: category.categoryBackground,
        borderRadius: BorderRadius.only(
            bottomRight:Radius.circular(index%2==0?0:25) ,
            bottomLeft: Radius.circular(index%2==0?25:0),
            topLeft:const Radius.circular(25),
            topRight:const  Radius.circular(25)),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset(category.categoryImage),

      ]),
    );
  }
}
class Category{
  String categoryID;
  String categoryImage;
  String categoryTitle;
  Color categoryBackground;
  Category({required this.categoryID,
    required this.categoryImage,
    required this.categoryTitle,
    required this.categoryBackground});
}