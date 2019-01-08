import 'package:flutter/material.dart';

class Product {
  Product({this.name, this.inCart});
  final String name;
  bool inCart;
}

typedef void ShoppingItem(Product item);

class ListItem extends StatelessWidget {
  ListItem({this.product, this.ontap});

  final Product product;

  final ShoppingItem ontap;

  TextStyle _getStyle() {
    if (product.inCart) {
      return TextStyle(decoration: TextDecoration.lineThrough);
    } else
     return TextStyle(fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        product.name,
        style: _getStyle(),
      ),
      onTap: () {
        ontap(product);
      },
    );
  }
}

class ListAll extends StatefulWidget {
  ListAll({this.products});

  final List<Product> products;

  @override
  State<StatefulWidget> createState() {
    return _ListAll(products: products);
  }
}

class _ListAll extends State<ListAll> {
  _ListAll({this.products});
  List<Product> products;

  void onTapReal(Product item) {
    setState(() {
      //item.inCart = !item.inCart;

      if (item.inCart==true) {
        item.inCart=false;
      } else {
        item.inCart=true;
      }

    });
  }

  List<ListItem> generateList() {
    List<ListItem> x = new List<ListItem>();
    for (var item in products) {
      ListItem listItem = new ListItem(
        product: item,
        ontap: onTapReal,
      );
      x.add(listItem);
    }
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dfgjh"),
      ),
      body: ListView(
        children: generateList(),
      ),
    );
  }
}
