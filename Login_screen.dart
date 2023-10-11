import 'package:flutter/material.dart';
import 'package:login_project/Components.dart';
import 'package:login_project/forgetPassword_screen.dart';
import 'package:login_project/signUp_screen.dart';

//'https://athkarapp.com/images/athkarLogo.png',

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const  SizedBox(
                    height: 40,
                  ),
                  defaultEmailField(),
                  const   SizedBox(
                    height: 40,
                  ),
                  defaultPasswordField(),
                  const   SizedBox(
                    height: 40,
                  ),
                     Container(
                    width: double.infinity,
                    child: MaterialButton(
                      color: Colors.blue,
                      child:const Text(
                        'تسجيل',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        final isValid = formKey.currentState!.validate();
                        if (isValid) {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Text('تم التسجيل'),
                                    content: Text('اهلا بعودتك ^_^ '),
                                  ));
                        }
                      },
                    ),
                  ),
                  const  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ليس لديك حساب ؟'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                        child: Text('سجل الآن'),
                      ),
                      Text('نسيت كلمة المرور ؟'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgetPassword(),
                              ));
                        },
                        child: Text('تغيير كلمة المرور'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

