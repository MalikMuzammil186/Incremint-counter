import 'package:flutter/material.dart';
import 'package:flutter_food_list_assignment/item_provider.dart';
import 'package:flutter_food_list_assignment/list_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyListTile extends ConsumerWidget {
  const MyListTile({super.key,required this.index , required this.list,});
  final int index;
  final List<ListItems> list;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: SizedBox(
      width: width*0.6,
      height: height*0.4,
       child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: width*0.5,
          height: height*0.3,   
      child: Image.network(list[index].imagePath,fit:BoxFit.fill,)),
          Text(list[index].name,style:const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const  Text('Rs:',style: TextStyle(fontSize: 40),),Text(list[index].price.toString(),style: const TextStyle(fontSize: 40),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const Text('Quantity:',style: TextStyle(fontSize: 30),),
             Text(list[index].quantity.toString(),style:const  TextStyle(fontSize: 30),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(onPressed: (){
              ref.read(ItemStateNotifierProvider.notifier).increment(index);
            },
            style:   ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green.shade900 )),
           child: const Icon(Icons.add,color: Colors.white,),),

           ElevatedButton(onPressed: (){
            ref.read(ItemStateNotifierProvider.notifier).decrement(index);
            
           }, 
           style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red.shade900)),
          child:const  Icon(Icons.remove,color: Colors.white,),
           ),
          ],)
          
   
   
        ],
        
       ),
     ),
   );
  }
  
}