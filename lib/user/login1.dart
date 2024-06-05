import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../show_error.dart';
import '../utils/shared.dart';
import '../widgets/button.dart';
import '../widgets/edit_text.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  var dio = Dio();
  initState(){
    super.initState();
    ifphoneexists();
  }

  ifphoneexists() async {

    String p = Shared.shared!.getString("phone") ?? "";
    phone.text = p;
  }


  login(BuildContext context,String type) async{
    var data = {
      "type": type,
      "phone":phone.text,
      "password":password.text,
    };

    dynamic  res = await dio.post("http://10.0.2.2/api/users/login" , data: data);
    if(res.data.status == false){
      showError(context, res.data["msg"]);
      return;
    }

    var user = res.data["data"];
    Shared.shared!.setString("logged","YES");
    Shared.shared!.setString("name",user["name"]);
    Shared.shared!.setInt("id",user["id"]);
    Shared.shared!.setString("phone",user["phone"]);

    if(type=="customer") {
      Navigator.of(context).pushReplacementNamed("customer_home");
    }else{
      Navigator.of(context).pushReplacementNamed("vendor_home");
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[40],
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/baytiyat3.png' , height: 200.0, width: 170.0, fit: BoxFit.cover,),
              Text('SIGN IN' , style: GoogleFonts.robotoCondensed(fontSize:25, fontWeight:FontWeight.bold)),
             // SizedBox(height: 10),
                  // TextFormField(controller: phone,
                  //   validator: (value){
                  //   if(value!.isEmpty){
                  //     return 'يرجى ادخال رقم الهاتف' ;
                  //   }
                  //   return null;
                  //   }),
                  EditText(controller: phone, hint:"رقم الهاتف"),
                  EditText(controller: password, hint: "كلمة السر"),
          
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                            ),
                              onPressed: (){

                            // if(phone.text.trim() == "يرجى ادخال رقم الهاتف"){
                            //
                            //   return null;
                            // }
                            login(context,"customer");
                            Navigator.of(context).pushReplacementNamed("customer_home");
                          },
                              child: Text("تسجيل الدخول كزبون" ,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 3.0
                              ),)
                          ),
                        ),



                      SizedBox(width: 15),

                      Padding(
                        padding: EdgeInsets.all(30),
                        child:
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink[300],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                              ),
                              onPressed: (){
                            if(phone.text.trim() == ""){

                              return;
                            }
                            login(context,"vendor");
                            Navigator.of(context).pushReplacementNamed("vendor_home");
                          },
                              child: Text("تسجيل الدخول كبائع",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 3.0
                                ),)
                          ),
                      ),
                ],
              ),

              Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child:
                  TextButton(onPressed: (){
                   Navigator.of(context).pushReplacementNamed("register");
              },
                  child: Text("إنشاء حساب جديد",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
