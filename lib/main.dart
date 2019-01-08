import 'package:flutter/material.dart';
//import 'mybox.dart';
//import 'stateful.dart';
//import 'statefulmy.dart';
import 'stateful2.dart';
//import 'shopping/ShoppingList.dart';
//import 'shopping/ShoppingListItem.dart';
import 'shoppingMy/Item.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'my first app',
//     home: myclass(),
//   ));
// }
// void main() {
//   runApp(MaterialApp(
//     title: 'Shopping App',
//     home: ShoppingList(
//       products: <Product>[
//         Product(name: 'Eggs'),
//         Product(name: 'Flour'),
//         Product(name: 'Chocolate chips'),
//       ],
//     ),
//   ));
// }
List<Product> item = new List<Product>();

void main() {
  // item.add(new Product(name: "Shweta", inCart: false));
  // item.add(new Product(name: "Sumit", inCart: false));
  // item.add(new Product(name: "Ankur", inCart: false));
  runApp(MaterialApp(
    title: "sdfh",
    home: ListAll(products: item),
  ));
}

class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "my app",
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body:
            // new mybox(
            //   color1: Colors.yellow,
            //   color2: Colors.blue,
            //   color3: Colors.red,
            //   color4: Colors.green,
            // ),
            //Counter()
            // Center(child: InteractiveButton())
            Counter()
        //InteractiveButton()
        //body: MyButton(),
        );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(5), bottom: Radius.circular(10)),
            color: Colors.lightGreen[500],
          ),
          child: Center(
            child: Text('Engage'),
          ),
        ),
      ),
    );
  }
}
