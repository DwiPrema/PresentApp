import 'package:absensi_kelas/core/constant/app_colors.dart';
import 'package:absensi_kelas/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BoxInfo extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final double? heightHeader;
  final double? width;
  final double? height;

  const BoxInfo({
    super.key,
    required this.label,
    required this.value,
    required this.color,
    this.heightHeader,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(8),
      margin: heightHeader != null
      ? EdgeInsets.only(top: heightHeader! - 40) :
      const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textPoppins(label,
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500),
            textPoppins(value,
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ],
        ),
      ),
    );
  }
}
