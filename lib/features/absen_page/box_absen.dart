import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:absensi_kelas/core/constant/app_colors.dart';

class BoxAbsen extends StatefulWidget {
  final String id;
  final String profile;
  final String nama;
  final String no;
  final String status;
  final Function(String)? onStatusChanged; // Callback untuk perubahan status
  final VoidCallback? onTap; // Callback untuk tap pada box absen

  const BoxAbsen({
    super.key,
    required this.id,
    required this.profile,
    required this.nama,
    required this.no,
    required this.status,
    this.onStatusChanged,
    this.onTap,
  });

  @override
  State<BoxAbsen> createState() => _BoxAbsenState();
}

class _BoxAbsenState extends State<BoxAbsen> {
  late String _currentStatus; // menyimpan status secara lokal

  final List<Map<String, dynamic>> _statusOptions = [
    {'label': 'Hadir', 'color': AppColors.greenhadir},
    {'label': 'Sakit', 'color': AppColors.yellowsakit},
    {'label': 'Izin', 'color': AppColors.blueizin},
    {'label': 'Alpha', 'color': AppColors.redalpha},
  ];

  @override
  void initState() {
    super.initState();
    _currentStatus =
        widget.status; // Inisialisasi status dengan nilai dari widget
  }

  void _changeStatus(String newStatus) {
    setState(() {
      _currentStatus = newStatus; // update status lokal
    });
    // Panggil callback untuk memberi tahu parent widget tentang perubahan status
    if (widget.onStatusChanged != null) {
      widget.onStatusChanged!(newStatus);
    }
  }

  // Fungsi untuk menampilkan AlertDialog
  void _showStatusDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Pilih Status Absen',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: _statusOptions.map((option) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: option['color'],
                    ),
                  ),
                  title: Text(
                    option['label'],
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context); // Tutup dialog
                    _changeStatus(option['label']); // Ubah status
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
              },
              child: Text(
                'Batal',
                style: GoogleFonts.poppins(color: Colors.grey[600]),
              ),
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk mendapatkan warna berdasarkan status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Hadir':
        return AppColors.greenhadir;
      case 'Sakit':
        return AppColors.yellowsakit;
      case 'Izin':
        return AppColors.blueizin;
      case 'Alpha':
        return AppColors.redalpha;
      default:
        return Colors.grey; // Warna default jika status tidak dikenali
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 130,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(130),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Konten utama BoxAbsen
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 66,
                  height: 66,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(widget.profile, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 15, height: 50),
              ],
            ),
            Positioned(
              top: 8,
              left: 80,
              right: 30,
              child: Text(
                widget.nama,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              right: 0,
              top: 4,
              child: Container(
                height: 25,
                width: 25,
                margin: const EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    widget.no,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: GestureDetector(
                onTap:
                    _showStatusDialog, // Panggil fungsi untuk menampilkan dialog
                child: Container(
                  width: 122,
                  height: 35,
                  decoration: BoxDecoration(
                    color: _getStatusColor(_currentStatus),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      _currentStatus,
                      style: GoogleFonts.inriaSans(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
