

import 'package:flutter/material.dart';

import 'category_grid_view.dart';

class HomeView extends StatelessWidget {
List<Category>category=[
  Category(categoryID: "Sports",
      categoryImage:'assets/images/sports.png' ,
      categoryTitle: "Sports",
      categoryBackground: const Color(0xFFC91C22)),
  Category(categoryID: 'General',
      categoryImage:'assets/images/politics.png' ,
      categoryTitle: 'politics',
      categoryBackground: const Color(0xFF003E90)),
  Category(categoryID: 'Health',
      categoryImage:'assets/images/health.png' ,
      categoryTitle: 'Health',
      categoryBackground: const Color(0xFFED1E79)),
  Category(categoryID: 'Business',
      categoryImage:'assets/images/business.png' ,
      categoryTitle: 'Business',
      categoryBackground: const Color(0xFFCF7E48)),
  Category(categoryID: 'Environment',
      categoryImage:'assets/images/enviroment.png' ,
      categoryTitle: 'Environment',
      categoryBackground: const Color(0xFF4882CF)),
  Category(categoryID: 'Science',
      categoryImage:'assets/images/science.png' ,
      categoryTitle: 'Science',
      categoryBackground: const Color(0xFFF2D352)),
];
  static const String routName='HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: Colors.green,
     elevation: 0,
       title:Text('News App',style: TextStyle(fontSize: 22,
         fontWeight:FontWeight.w400, )) ,centerTitle: true,
shape: RoundedRectangleBorder(borderRadius:  BorderRadius.only(
    bottomLeft:Radius.circular(25),bottomRight: Radius.circular(25) )),
     ),
      drawer: Drawer(

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 45),
             width: double.infinity,
              height:120 ,
            color: Colors.green,
              child: const Text('News App!',style:TextStyle(fontSize: 24,
              fontWeight:FontWeight.bold,color: Colors.white) ,
                textAlign:TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( children: [Icon(Icons.menu,size: 30,),
                SizedBox(width: 10,),
                Text('categories',style: Theme.of(context).textTheme.headline6!.
                copyWith(fontWeight:FontWeight.bold,fontSize: 20))
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( children: [Icon(Icons.settings,size: 30,),
                SizedBox(width: 10,),
                Text('Settings',style: Theme.of(context).textTheme.headline6!.
                copyWith(fontWeight:FontWeight.bold,fontSize: 20))
              ],),
            ),
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ Text('Pick your category \n of interest',
          style:Theme.of(context).textTheme.headline6!.
          copyWith(color: Colors.grey) ,),
          Expanded(
            child: GridView.builder(
             padding: EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 6/7,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
                itemBuilder:(_,index)=> categoryGridView(
                  index: index,
                  category: category[index],
                ),
              itemCount: category.length,
            ),
          ),
        ],
      )),
    );
  }
}
