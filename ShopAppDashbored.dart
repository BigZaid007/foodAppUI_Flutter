
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/foodItem.dart';

class ShopAppDashbored extends StatefulWidget {
  @override
  _ShopAppDashboredState createState() => _ShopAppDashboredState();
}

class _ShopAppDashboredState extends State<ShopAppDashbored> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                      image:
                          DecorationImage(image: AssetImage('assets/man.png'))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Search for Recipe',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.grey[400],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommanded',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            height: 430,
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 2),
              children: [
                foodCard(context,'Piece Of Cake', 'assets/cake.png', 5, Colors.red),
                foodCard(context,'Juice', 'assets/orange-juice.png', 3, Colors.lightBlue),
                foodCard(context,'Beef Steak', 'assets/beef.png', 25, Colors.deepOrangeAccent),
                foodCard(context,'Pizza', 'assets/pizza.png', 12, Colors.indigo),
                foodCard(context,'Taco', 'assets/taco.png', 15, Colors.amber[800]),
                foodCard(context,'Rice', 'assets/rice-bowl.png', 11, Colors.grey[500]),
                foodCard(context,'Hamburger', 'assets/hamburger.png', 7, Colors.green),
                foodCard(context,'Donut', 'assets/donut.png', 6, Colors.blue[500]),
                foodCard(context,'Chicken', 'assets/chicken-leg.png', 50, Colors.amber[400]),


              ],
            ),
          )
        ],
      ),
    );
  }
}

 foodCard(BuildContext context,String name, String img, int price, Color cardColor) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    child: InkWell(
     onTap: (){

       Navigator.push(context, MaterialPageRoute(builder: (context) => itemFood(name: name,img: img,price: price,),));
     },
      child: Container(
        width: 175,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.favorite_border,color: Colors.white,size: 30,)
              ],
            )
          ],
        ),
      ),
    ),
  );
}
