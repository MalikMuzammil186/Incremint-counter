import 'package:flutter/material.dart';
import 'package:flutter_food_list_assignment/item_provider.dart';
import 'package:flutter_food_list_assignment/item_state.dart';
import 'package:flutter_food_list_assignment/list_items.dart';
import 'package:flutter_food_list_assignment/list_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Food items',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Incremint page Home'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
 final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text(widget.title),
      ),
      body:Consumer(builder:(context, ref, child) {
        var itemState=ref.watch(ItemStateNotifierProvider);
        if (itemState is ItemInitialState) {
          return const ItemInitialWidget();
        }else if(itemState is ItemLoadedState){
          return ItemLoadedWidget(items: itemState.items);
        }else{
          return  const ErorrWidget();
        }
    
      },)
      
      
    );
  }
}


class ItemInitialWidget extends StatelessWidget {
  const ItemInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Center(child: MyListView(list: FoodItemList));
  }
  
}

class ItemLoadedWidget extends StatelessWidget {
  const ItemLoadedWidget({super.key,required this.items});
  final List<ListItems> items;

  @override
  Widget build(BuildContext context) {
   return  Center(child: MyListView(list: items));
  }
  
}

class ErorrWidget extends StatelessWidget {
  const ErorrWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
    color: Colors.red,
    child:const  Text("Erorr has been occured status code 401"),
   );
  }
  
}