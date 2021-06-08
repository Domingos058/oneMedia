import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Laptop",
      "picture":"imagens/products/laptop.jpg",
      "price":"100",
      "convP":"600"
    },
    {
      "name":"Laptop",
      "picture":"imagens/products/laptop.jpg",
      "price":"200",
      "convP":"600"
    }

  ];
  @override
  Widget build(BuildContext context) {
    //itemCount: product_list.length,
    return GridView.builder(
    itemCount: product_list.length,
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(BuildContext context, int index){
      return Padding(padding: const EdgeInsets.all(2.0),child: Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_price: product_list[index]['price'],
          prod_convP: product_list[index]['convP']
      ),);
    });
  }
}


class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;
  final prod_convP;

  Single_prod(
  {
    this.prod_name,
    this.prod_picture,
    this.prod_price,
    this.prod_convP
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_picture, child: Material(child: InkWell(onTap: (){},
      child: GridTile(
        footer: Container(
          color: Colors.white70,
          child: ListTile(
            leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
            title: Text("\$$prod_price",style: TextStyle(color: Colors.green),),
            subtitle: Text("\$$prod_convP",style: TextStyle(color: Colors.green),),
          )
          ),
      child: Image.asset(prod_picture,fit: BoxFit.cover,),
      ),
      ),),));

  }
}

