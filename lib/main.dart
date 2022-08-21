import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Screens/explore_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/profile_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: const ExplorePage(),
  ));
}

class TryGrid extends StatefulWidget {
  const TryGrid({Key? key}) : super(key: key);

  @override
  State<TryGrid> createState() => _TryGridState();
}

class _TryGridState extends State<TryGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children:  [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.green,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.deepPurple,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.deepPurple,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(width: 50, height: 50, color: Colors.red,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:  Container(width: 50, height: 50, color: Colors.yellowAccent,),
              ),
            ],
          ),
      ),
    );
  }
}

