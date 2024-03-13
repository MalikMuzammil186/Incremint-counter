// ignore_for_file: public_member_api_docs, sort_constructors_first
final FoodItemList=<ListItems>[
  ListItems(name: 'Pizza Bites', price: 1500.0, quantity: 1, imagePath:'https://tse3.mm.bing.net/th?id=OIP._SwDOHNBW6F1D9wrZxu66wHaHa&pid=Api&P=0&h=220'),
  ListItems(name: 'Larg Burger', price: 700.0, quantity: 1, imagePath: 'https://tse3.mm.bing.net/th?id=OIP.FX3kmx4mKHm07SqksZbfmAHaEK&pid=Api&P=0&h=220'),
  ListItems(name: 'Cold Drinks', price: 200.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.wiOFs5MqGT7j91sJ--83NAHaE7&pid=Api&P=0&h=220'),
 
  ListItems(name: 'Pizaa', price: 1700.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.O_9NJ7lcAuoeVLtRJH0l_QHaE8&pid=Api&P=0&h=220'),
  ListItems(name: 'Pasta', price: 600.0, quantity: 1, imagePath: 'https://tse3.mm.bing.net/th?id=OIP.TsjX5R6YQjq8bSqSVW3qyQHaE7&pid=Api&P=0&h=220'),
  ListItems(name: 'Sharwama', price: 250.0, quantity: 1, imagePath: 'https://tse1.mm.bing.net/th?id=OIP.HAIopj10-H_JVN3AR0r_yQHaFj&pid=Api&P=0&h=220'),
 
  ListItems(name: 'Chips', price: 300.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.vk6O60on-d9R6F7Zxvua7gHaE7&pid=Api&P=0&h=220'),
  ListItems(name: 'Wings', price: 550.0, quantity: 1, imagePath:'https://tse4.mm.bing.net/th?id=OIP.B0cv0aBIvuASfvoWGzm_OAHaE8&pid=Api&P=0&h=220'),
  ListItems(name: 'Burger', price: 450.0, quantity:1, imagePath: "https://tse4.mm.bing.net/th?id=OIP.geRCt71h0ZftFA8uOoAXowHaEE&pid=Api&P=0&h=220")
];


final updateList=<ListItems>[
  ListItems(name: 'Pizza Bites', price: 1500.0, quantity: 1, imagePath:'https://tse3.mm.bing.net/th?id=OIP._SwDOHNBW6F1D9wrZxu66wHaHa&pid=Api&P=0&h=220'),
  ListItems(name: 'Larg Burger', price: 700.0, quantity: 1, imagePath: 'https://tse3.mm.bing.net/th?id=OIP.FX3kmx4mKHm07SqksZbfmAHaEK&pid=Api&P=0&h=220'),
  ListItems(name: 'Cold Drinks', price: 200.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.wiOFs5MqGT7j91sJ--83NAHaE7&pid=Api&P=0&h=220'),
 
  ListItems(name: 'Pizaa', price: 1700.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.O_9NJ7lcAuoeVLtRJH0l_QHaE8&pid=Api&P=0&h=220'),
  ListItems(name: 'Pasta', price: 600.0, quantity: 1, imagePath: 'https://tse3.mm.bing.net/th?id=OIP.TsjX5R6YQjq8bSqSVW3qyQHaE7&pid=Api&P=0&h=220'),
  ListItems(name: 'Sharwama', price: 250.0, quantity: 1, imagePath: 'https://tse1.mm.bing.net/th?id=OIP.HAIopj10-H_JVN3AR0r_yQHaFj&pid=Api&P=0&h=220'),
 
  ListItems(name: 'Chips', price: 300.0, quantity: 1, imagePath: 'https://tse2.mm.bing.net/th?id=OIP.vk6O60on-d9R6F7Zxvua7gHaE7&pid=Api&P=0&h=220'),
  ListItems(name: 'Wings', price: 550.0, quantity: 1, imagePath:'https://tse4.mm.bing.net/th?id=OIP.B0cv0aBIvuASfvoWGzm_OAHaE8&pid=Api&P=0&h=220'),
  ListItems(name: 'Burger', price: 450.0, quantity:1, imagePath: "https://tse4.mm.bing.net/th?id=OIP.geRCt71h0ZftFA8uOoAXowHaEE&pid=Api&P=0&h=220")
];

class ListItems {
  String name;
  double price;
  int quantity;
  String  imagePath;
  ListItems({
    required this.name,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });
  
  
}
