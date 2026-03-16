import 'package:absensi_kelas/features/school_classes/models/school_class_model.dart';
import "package:isar/isar.dart";

part 'student_model.g.dart';

@Collection()
class Student {
  Id studentId = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String name;

  @Index()
  late int rollNum;

  String nis = "-";
  String nisn = "-";

  @Index()
  final schClass = IsarLink<SchoolClass>();

  Student copyWith({
    String? name,
    int? rollNum,
    String? nis,
    String? nisn,
  }) {
    return Student()
      ..studentId = studentId
      ..name = name ?? this.name
      ..rollNum = rollNum ?? this.rollNum
      ..nis = nis ?? this.nis
      ..nisn = nisn ?? this.nisn;
  }
}
