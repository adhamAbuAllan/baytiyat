import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// الصفحة التي تظهر عند الضغط على صورة المنتج وتظهر تفاصيل معلومات المنتج اكثر

class Product extends StatefulWidget {
  const Product({super.key, required this.post});

  final dynamic post;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // صورة المنتج
              Image.asset('assets/baytiyat.jpeg',
              height: 200,
              fit: BoxFit.cover,),

              // اسم المنتج
              const SizedBox(height: 16.0),
            Text(
              '₪7.20',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
              Text(
                '6pairs Kids\' Anti-Slip Boat Socks With Glue Dots',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // سعر المنتج
              const SizedBox(height: 8.0),


              // وصف المنتج
              const SizedBox(height: 16.0),
              const Text(
                'Socks for baby and kids. Soft and comfortable, with non-slip silicone dots to keep them from slipping off. Perfect for everyday wear.',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),

              // خصائص المنتج
              const SizedBox(height: 16.0),
              const Text(
                '*خصائص المنتج:*',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                '- مادة: قطن\n- مقاس: 6 أزواج\n- لون: أبيض',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),

              // زر إضافة إلى عربة التسوق
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // أضف المنتج إلى عربة التسوق
                },
                child: const Text('إضافة إلى عربة التسوق'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

// Padding(
// padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
// child:
// Text(widget.post["description"],
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w700,
// color: Colors.grey)),
// ),
