import 'package:absensi_kelas/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextFieldType { normal, outline }

Widget textFieldWidget(
    {required String labelText,
    required TextEditingController controller,
    int? maxLength,
    String errorText = "field ini harus diisi!",
    bool alert = false,
    TextFieldType textFieldType = TextFieldType.normal}) {
  switch (textFieldType) {
    case TextFieldType.outline:
      return TextFormField(
        controller: controller,
        autofocus: true,
        maxLength: maxLength,
        minLines: 1,
        maxLines: null,
        decoration: InputDecoration(
          errorText: alert ? errorText : null,
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.black),
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueCard.withAlpha(100),
              width: 2,
            ),
          ),
        ),
      );

    case TextFieldType.normal:
      return TextFormField(
        maxLength: maxLength,
        minLines: 1,
        maxLines: null,
        style: GoogleFonts.poppins(
            color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w300),
        controller: controller,
        decoration: InputDecoration(
          errorText: alert ? errorText : null,
          hintText: labelText,
          hintStyle: GoogleFonts.poppins(
              color: AppColors.black.withAlpha(100),
              fontSize: 14,
              fontWeight: FontWeight.w300),
          border: const UnderlineInputBorder(),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blueCard,
              width: 2,
            ),
          ),
        ),
      );
  }
}
