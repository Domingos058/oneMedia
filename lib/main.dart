import 'package:flutter/material.dart';
import 'home.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/components/product.dart';
void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage1()

    )
  );
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('imagens/black-friday.jpg'),
          AssetImage('imagens/discount.jpg'),
          AssetImage('imagens/sale.png'),
          AssetImage('imagens/special-offer-.png')
        ],
        autoplay: true,
        dotSize: 6.0,
        indicatorBgPadding: 0.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
      

    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {}
        ),*/

        title: Text('Onemedia'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed:(){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
      child: new ListView(
        children:<Widget> [
          new UserAccountsDrawerHeader(accountName: Text('Domingos Cesar'), accountEmail: Text('domingoscesar058@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.person, color: Colors.white,),
            ),
          ) ,),
          
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help),
            ),
          ),
        ],
      ),
    ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(10)),
          Container(
            height: 200.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

