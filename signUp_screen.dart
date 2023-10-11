import 'package:flutter/material.dart';
import 'package:login_project/Components.dart';

class SignUp extends StatelessWidget {
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const  Text(
                      'تسجيل حساب',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const  SizedBox(
                      height: 40,
                    ),
                    defaultNameField(),
                    const  SizedBox(
                      height: 40,
                    ),
                    defaultEmailField(),
                    const  SizedBox(
                      height: 40,
                    ),
                    defaultPasswordField(),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.blue,
                        child: const Text(
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
                                builder: (context) =>const AlertDialog(
                                      title: Text('تم تسجيل الحساب'),
                                      content: Text('اهلا بك , '),
                                    ));
                          }
                        },
                      ),
                    ),
                    const  SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
