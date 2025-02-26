import 'package:flutter/material.dart';

class TermsService extends StatelessWidget {
  const TermsService({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terms Of Service',
      home: Scaffold(
          appBar: AppBar(
            title: Text('شروط الخدمة '),
            centerTitle: true,
          ),
          body: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.only(top: 20.0 , bottom: 7.0, left: 14.0, right: 14.0),
                  child: Text( "1. عامة" ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 7.0 , bottom: 4.0, left: 14.0, right: 14.0),
                  child: Text( " 1.1 النطاق : هذه الشروط والأحكام (‘الاتفاقية’ أو ‘الشروط’) هي عقد بينك وبين Baytiyat  ، يحكم استخدامك لموقعنا الإلكتروني ، أو أي تطبيقات جوال (‘تطبيقات’) ترتبط ارتباطًا تشعبيًا بهذه الاتفاقية ، أو أي مواقع ويب أو صفحات أو ميزات أخرى أو المحتوى الذي نمتلكه ونديره والذي يربط بين هذه الاتفاقية (بشكل جماعي ، بما في ذلك الموقع والتطبيقات ، و ‘الخدمات’)."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 4.0 , bottom: 4.0, left: 14.0, right: 14.0),
                  child: Text( "من خلال الوصول إلى الخدمات أو استخدامها بأي طريقة ، بما في ذلك ، على سبيل المثال لا الحصر ، زيارة الموقع أو تصفحه ، أو تنزيل تطبيقات الهاتف المحمول ، أو تسجيل حساب ، أو المساهمة بمحتوى أو مواد أخرى إلى الموقع أو على التطبيقات أو عبرها ، فأنت صراحة فهم شروط الاستخدام والإقرار بها والموافقة عليها. أنت مفوض فقط لاستخدام الخدمات إذا كنت توافق على الالتزام بجميع القوانين المعمول بها وهذه الشروط."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 4.0 , bottom: 16.0, left: 14.0, right: 14.0),
                  child: Text( "بالإضافة إلى ذلك ، يمكنك قراءة سياسة الخصوصية الخاصة بنا في أي وقت لمزيد من المعلومات حول كيفية قيام ChicPoint بجمع معلوماتك وتخزينها وحمايتها عند استخدامك للخدمات. يتم دمج سياسة الخصوصية وملفات تعريف الارتباط بموجب هذا بالإشارة إلى هذه الشروط والأحكام كما هو موضح بالكامل هنا."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 16.0 , bottom: 5.0, left: 14.0, right: 14.0),
                  child: Text( "1.2 تحديثات الشروط : نحتفظ بالحق في تعديل شروط الاستخدام ، بما في ذلك سياسة الخصوصية وملفات تعريف الارتباط ، في أي وقت ، وفقًا لتقديرنا الخاص. إذا قمنا بتعديل الشروط الجوهرية لهذه الاتفاقية ، فسيصبح هذا التعديل ساريًا بعد أن نرسل لك إشعارًا بالاتفاقية المعدلة. سيكون هذا الإشعار وفقًا لتقديرنا الخاص ، وقد تتضمن طريقة الإشعار ، على سبيل المثال ، عبر البريد الإلكتروني أو الإشعار المنشور على الموقع أو التطبيقات ، أو بطريقة أخرى.."
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(top: 5.0 , bottom: 16.0, left: 14.0, right: 14.0),
                    child: Text( "إن إخفاقك في التوقف عن استخدام الخدمات بعد تلقي إشعار بالتعديل سيشكل موافقتك على الشروط المعدلة."
                    ),
                  ),

                Padding(
                  padding: EdgeInsets.only(top: 16.0 , bottom: 14.0, left: 14.0, right: 14.0),
                  child: Text( "1.3 قبول الشروط. للتسوق معنا ، يجب أن يكون عمرك 16 عامًا على الأقل. يشير أي دخول أو تصفح أو استخدام للخدمات بطريقة أخرى إلى موافقتك على جميع الشروط والأحكام الواردة في هذه الاتفاقية. إذا كنت لا توافق على أي جزء من الشروط ، فيجب عليك التوقف فورًا عن الوصول إلى الخدمات أو استخدامها. "
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 16.0 , bottom: 20.0, left: 14.0, right: 14.0),
                  child: Text( "يرجى قراءة هذه الاتفاقية بعناية قبل المتابعة"
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 20.0 , bottom: 7.0, left: 14.0, right: 14.0),
                  child: Text( "2. الاخطاء" ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 7.0 , bottom: 5.0, left: 14.0, right: 14.0),
                  child: Text( "في حالة اكتشاف حدوث خطأ عند إدخال بياناتك الشخصية أثناء التسجيل كمستخدم لخدماتنا ، يمكنك تعديلها في قسم 'حسابي'."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5.0 , bottom: 5.0, left: 14.0, right: 14.0),
                  child: Text( "على أي حال ، ستتمكن من تصحيح الأخطاء المتعلقة بالبيانات الشخصية المقدمة أثناء عملية الشراء من خلال الاتصال بنا ، وكذلك ممارسة حق التصحيح المنصوص عليه في سياسة الخصوصية وملفات تعريف الارتباط من خلال موقعنا والتطبيقات."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5.0 , bottom: 5.0, left: 14.0, right: 14.0),
                  child: Text( "بينما يسعى Baytiyat لتقديم معلومات دقيقة عن المنتج والتسعير ، قد تحدث أخطاء تسعير أو مطبعية."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5.0 , bottom: 20.0, left: 14.0, right: 14.0),
                  child: Text( "Baytiyat لا يمكن تأكيد سعر السلعة إلا بعد الطلب. في حالة إدراج عنصر بسعر غير صحيح أو بمعلومات غير صحيحة بسبب خطأ في التسعير أو معلومات المنتج ، يحق لتطبيق Baytiyat ، وفقًا لتقديرنا الخاص ، رفض أو إلغاء أي طلبات يتم تقديمها لهذا العنصر. في حالة سوء تسعير أحد العناصر ، يجوز لنا ، حسب تقديرنا ، الاتصال بك للحصول على تعليمات أو إلغاء طلبك وإخطارك بهذا الإلغاء.."
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 20.0 , bottom: 7.0, left: 14.0, right: 14.0),
                  child: Text( "3. الأحداث خارجة عن سيطرتنا " ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 7.0 , bottom: 7.0, left: 14.0, right: 14.0),
                  child: Text( "لن نكون مسؤولين عن أي عدم التزام أو تأخير في الامتثال لأي من الالتزامات التي نتعهد بها بموجب الشروط أو العقود الأخرى عندما تكون ناجمة عن أحداث خارجة عن سيطرتنا المعقولة ('القوة القاهرة'). تتضمن القوة القاهرة أي فعل أو حدث أو فشل في ممارسة الرياضة أو إغفال أو حادث خارج عن سيطرتنا المعقولة ."
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 7.0 , bottom: 20.0, left: 14.0, right: 14.0),
                  child: Text( "يجب أن يُفهم أن التزاماتنا الناشئة عن الشروط أو العقود الأخرى يتم تعليقها خلال الفترة التي تظل فيها القوة القاهرة سارية المفعول وسيتم منحنا تمديدًا للمدة التي يتم خلالها الوفاء بهذه الالتزامات بمقدار من الوقت يساوي الوقت الذي استمر فيه وضع القوة القاهرة. سنقدم جميع الموارد المعقولة لإنهاء حالة القوة القاهرة أو لإيجاد حل يمكننا من الوفاء بالتزاماتنا بموجب الشروط أو العقود الأخرى على الرغم من وضع القوة القاهرة."
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 20.0 , bottom: 7.0, left: 14.0, right: 14.0),
                  child: Text( "3. اتصل بنا" ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 7.0 , bottom: 50.0, left: 14.0, right: 14.0),
                  child: Text( "نرحب بأسئلتك وتعليقاتك حول ممارسات الخصوصية لدينا أو هذه الشروط."
                  ),
                ),

              ],

            ),
          )

      ),
    );
  }
}
