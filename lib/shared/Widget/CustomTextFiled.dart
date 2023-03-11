import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  String? Tittle;
  TextEditingController? controller ;
  Widget? SuffixIcon;
  final String? Function(String?)? validator ;
  Widget? PrefixIcon;
  TextInputType? type;
  bool? obsecure;

  CustomTextFiled(
      {super.key,
        required this.Tittle,
        this.PrefixIcon,
        this.SuffixIcon,
        this.type,
        required this.obsecure, this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obsecure!,
      keyboardType: type,
      decoration: InputDecoration(
          hintText: Tittle,
          suffixIcon: SuffixIcon,
          prefixIcon: PrefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    );
  }
}
