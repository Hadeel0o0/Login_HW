import 'package:flutter/material.dart';
//final formKey = GlobalKey<FormState>();


Widget defaultPasswordField() => TextFormField(
//مع المحاكي
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'كلمة المرور',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye),
      ),
      validator: (value) {
        if (value!.length < 7) {
          return 'كلمة المرور يجب أن لا تقل عن 7 أحرف ';
        } else {
          return null;
        }
      },
    );

Widget defaultEmailField() => TextFormField(
  //مع المحاكي
  keyboardType: TextInputType.emailAddress,
  decoration:const InputDecoration(
    labelText: 'عنوان البريد الألكتروني',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email),
  ),
  validator: (value) {
    const emailPattern =
        r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
    final emailRegExp = RegExp(emailPattern);
    if (value!.isEmpty) {
      return 'أدخل بريدك الألكتروني!';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'أدخل بريد ألكتروني صحيح!';
    } else {
      return null;
    }
  },
);

Widget defaultNameField() => TextFormField(
      decoration: const InputDecoration(
        labelText: 'إسم المستخدم',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return 'أدخل على الأقل 8 أحرف';
        } else {
          return null;
        }
      },
      maxLength: 15,
    );





























//
// Widget defaultTextFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   Function? onSubmit,
//   required String label,
//   required IconData prefixIcon,
// }) =>
//     TextFormField(
//       controller: controller,
// //مع المحاكي
//       keyboardType: type,
//       onFieldSubmitted: (value) {
//         onSubmit;
//       },
// //onSubmit == null ? (value){} : null ,
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//         prefixIcon: Icon(prefixIcon),
//       ),
//     );
