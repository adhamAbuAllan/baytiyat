import 'package:baytiyat/pages/guestPages/profile_guest.dart';
import 'package:baytiyat/pages/guestPages/shopping_guest.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeGuest extends StatefulWidget {
  const HomeGuest({super.key});

  @override
  State<HomeGuest> createState() => _HomeGuestState();
}

class _HomeGuestState extends State<HomeGuest> {

  List<Map<String,dynamic>> posts = [];
  List<Map<String,dynamic>> vendors = [];

  @override
  void initState() {
    super.initState();
    getposts();
    getVendors();
  }

  var dio = Dio();
  getposts() async{
    var res = await dio.get( "http://10.0.2.2/api/products/all");
    setState(() {
      this.posts = res.data['data'];
    });
  }

  getVendors() async{
    var d = {  "type": "vendor"};
    var res = await dio.get("http://10.0.2.2/api/users/vendors" , data:d);
    setState(() {
      this.vendors = res.data['data'];
    });
  }

  var guestPages = [
    HomeGuest(),
    ShoppingGuest(),
    ProfileGuest()
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
            itemCount: this.vendors.length,
            itemBuilder: (ctx,index){
              return ListTile(
                title: this.vendors[index]["name"],
                onTap: (){
                  Navigator.of(context).pushNamed("vendor_products",arguments: this.vendors[index]["id"]);
                },
              );
            }
        ),
      ),




        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (index){
            switch (index){
              case 0 :
                Navigator.of(context).pushNamed("home_guest");
              case 1 :
                Navigator.of(context).pushNamed("shopping_guest");
              case 2 :
                Navigator.of(context).pushNamed("profile_guest");
            }
          setState(() {
          this.index = index;
          });
          },
          type: BottomNavigationBarType.fixed,

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
