import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/ShopAppDashbored.dart';

class itemFood extends StatelessWidget {
  final name, img, price;

  itemFood({this.name, this.img, this.price});

  @override
  Widget build(BuildContext context) {
    String thePrice = price.toString();
    var des =
        'Sed ut perspicotam ta voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?';

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
                Icon(Icons.shopping_cart),
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
          Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage(img))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
               child: Text(des,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
             ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      'Total Price: \$$thePrice',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),

                    Container(
                      child: Row(
                        children: [
                          FloatingActionButton(onPressed: (){},child: Icon(Icons.add_box_outlined,color: Colors.black,),mini: true,backgroundColor: Colors.white,elevation: 10,),
                          FloatingActionButton(onPressed: (){},child: Icon(Icons.indeterminate_check_box_outlined,color: Colors.black,),mini: true,backgroundColor: Colors.white,elevation: 10,),

                        ],
                      ),
                    )



                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Container(width: double.infinity,height: 50,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),

                  child: Text('Make Your Order',style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white
                  ),),),
              )


            ],
          )
        ],
      ),
    );
  }
}
