import 'package:flutter/material.dart';
import 'package:world/main.dart';

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
  Icon _getIcon(){
    if(product.inCart){
      return Icon(Icons.check_box);
    }
    return Icon(Icons.check_box_outline_blank);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _getIcon(),
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

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  List<Product> products;

  void onTapReal(Product item) {
    setState(() {
      //item.inCart = !item.inCart;

      if (item.inCart == true) {
        item.inCart = false;
      } else {
        item.inCart = true;
      }
    });
  }

  List<ListItem> generateList() {
    List<ListItem> x = new List<ListItem>();
    for (var item in products) {
      print(item.name);
      ListItem listItem = new ListItem(
        product: item,
        ontap: onTapReal,
      );
      x.add(listItem);
    }
    return x;
  }

  void addValue() {
    //print("Yooo");
    setState(() {
      item.add(Product(name: myController.text, inCart: false));
      myController.text = "";
    });
    //print(item.length);
    print(products.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              child: ListView(
                children: generateList(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: SizedBox(
                        child: TextField(
                  controller: myController,
                ))),
                RaisedButton(
                  child: Icon(Icons.add),
                  onPressed: addValue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
