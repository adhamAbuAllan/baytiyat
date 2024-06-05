import 'package:baytiyat/user/profile.dart';
import 'package:baytiyat/pages/customerPages/customer_shopping.dart';
import 'package:baytiyat/utils/shared.dart';
import 'package:baytiyat/widgets/post.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {

  List<ProductPost> posts = [];
  List<Vendor> vendors = [];

  @override
  void initState() {
    super.initState();
    getposts();
    getVendors();
  }

  var dio = Dio();
  getposts() async{
    var res = await dio.get( "http://10.0.2.2:8000/api/products/all");
    var response = ProductsResponse.fromJson(res.data);
    if(response.status == false){

      return;
    }
    setState(() {
      this.posts = response.data;
    });
  }

  getVendors() async{
   // var d = {  "type": "vendor"};
    //var res = await dio.post("http://10.0.2.2/api/users/all", data: d);
    var res = await dio.get("http://10.0.2.2:8000/api/users/vendors");
    var response = VendorsResponse.fromJson(res.data);
    if(response.status == false){

      return;
    }
    setState(() {
      this.vendors = response.data;
      print(this.vendors);
    });
  }

  var pages = [
    // CustomerHome(), //متجر
    CustomerShopping(), //حقيبة التسوق
    Profile()   //انا
  ];

  int index = 0;




  @override
  Widget build(BuildContext context) {


    // return Scaffold(
    //   appBar: AppBar(),
    //   drawer: Drawer(),
    //   body: IndexedStack(
    //      index: index,
    //      children: pages,
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     onTap: (i){
    //       setState(() {
    //         index = i;
    //       });
    //     },
    //     items: [
    //        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //     ],
    //   ),
    // );


    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (ctx,index){
          //return Text(posts[index].name);
           return Post(post: posts[index]);
      }),
    );


    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView.builder(
            itemCount: this.vendors.length,
            itemBuilder: (ctx,index){
              return ListTile(
                title: Text(this.vendors[index].name),
                onTap: (){
                  Navigator.of(context).pushNamed("vendor_products",arguments: this.vendors[index].id);
                },
              );
            }
        ),
      ),

      body: Column(
          children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
           decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.grey[100],
            hintStyle: new TextStyle(color: Colors.grey[600]),
            hintText: "البحث",
          ),
          autofocus: false,
        ),
      ),
    ],
    ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index){
          switch (index){
            case 0 :
              Navigator.of(context).pushNamed("customer_home");
            case 1 :
              Navigator.of(context).pushNamed("customer_shopping");
            case 2 :
              Navigator.of(context).pushNamed("profile");
          }
          setState(() {
            this.index = index;
          });
        },

       selectedItemColor: Colors.pink[300],

          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "متجر"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "حقيبة التسوق"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "أنا"),

          ],
      ),
    );
  }
}



class ProductsResponse {
  ProductsResponse({
    required this.status,
    required this.msg,
    required this.data,
  });
  late final bool status;
  late final String msg;
  late final List<ProductPost> data;

  ProductsResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    msg = json['msg'];
    data = List.from(json['data']).map((e)=>ProductPost.fromJson(e)).toList();
  }

}

class ProductPost {
  ProductPost({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.photo,
    required this.price,
  });
  late final int id;
  late final String name;
  late final int categoryId;
  late final String photo;
  late final int price;

  ProductPost.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    photo = json['photo'];
    price = json['price'];
  }
}


class VendorsResponse {
  VendorsResponse({
    required this.status,
    required this.msg,
    required this.data,
  });
  late final bool status;
  late final String msg;
  late final List<Vendor> data;

  VendorsResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    msg = json['msg'];
    data = List.from(json['data']).map((e)=>Vendor.fromJson(e)).toList();
  }

}

class Vendor {
  Vendor({
    required this.id,
    required this.name,
    required this.phone,
    required this.type,
  });
  late final int id;
  late final String name;
  late final String phone;
  late final String type;

  Vendor.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    type = json['type'];
  }

}