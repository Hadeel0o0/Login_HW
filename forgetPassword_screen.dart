import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text('تغيير كلمة المرور'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'أدخل بريدك الألكتروني و سوف نرسل إليك رابط لإعادة ضبط كلمة المرور'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'أدخل بريدك الألكتروني',
                    ),
                  ),
                ),
                const  SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                              title: Text('تم الإرسال '),
                              content: Text(' قم بالتحقق من بريدك الإلكتروني'),
                              actions: [],
                            ));
                  },
                  child: Text('إرسال'),

                  //  color: Colors.blue[200]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
