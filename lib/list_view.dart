import 'package:flutter/widgets.dart';
import 'package:flutter_food_list_assignment/list_items.dart';
import 'package:flutter_food_list_assignment/list_tile.dart';

class MyListView  extends StatelessWidget {
  const MyListView({super.key,required this.list});
  final List <ListItems> list;

  @override
  Widget build(BuildContext context) {
  return ListView.builder(itemCount: list.length,
  scrollDirection: Axis.horizontal,
    itemBuilder:(context, index) {
     return MyListTile(index: index,list: list);
   }, );
  }
  
}