import 'package:baytiyat/user/profile.dart';
import 'package:flutter/material.dart';
import 'customer_home.dart';


//شاشة حقيبة التسوق

class CustomerShopping extends StatefulWidget {
  const CustomerShopping({super.key});

  @override
  State<CustomerShopping> createState() => _CustomerShoppingState();
}

class _CustomerShoppingState extends State<CustomerShopping> {

  var pages = [
    CustomerHome(), //متجر
    CustomerShopping(), //حقيبة التسوق
    Profile()   //انا
  ];

  int index = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index){
          switch (index){
            case 0 :
              Navigator.of(context).pushNamed("home_guest");
            case 1 :
              Navigator.of(context).pushNamed("customer_shopping");
            case 2 :
              Navigator.of(context).pushNamed("profile");
          }
          setState(() {
            this.index = index;
          });
          setState(() {
            this.index = index;
          });
        },

        selectedItemColor: Colors.pink[300],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "متجر"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "حقيبة التسوق"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "أنا"),

        ],
      ),


    );
  }
}
