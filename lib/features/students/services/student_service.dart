import 'package:absensi_kelas/core/database/global_service.dart';
import 'package:absensi_kelas/features/school_classes/models/school_class_model.dart';
import 'package:absensi_kelas/features/students/models/student_model.dart';
import 'package:isar/isar.dart';

class StudentService {
  ///Create student data
  Future<void> createStudentData(Student student) async {
    await DatabaseService.isarDb.writeTxn(() async {
      await DatabaseService.isarDb.students.put(student);
      await student.schClass.save();
    });
  }

  ///Read Student Data By classId
  Future<List<Student>> getStudentByClass(int classId) async {
    return await DatabaseService.isarDb.students
        .filter()
        .schClass((q) => q.schoolClassIdEqualTo(classId))
        .findAll();
  }

  ///Update student data
  Future<void> updateStudentData(Student student) async {
    await DatabaseService.isarDb.writeTxn(() async {
      await DatabaseService.isarDb.students.put(student);
      await student.schClass.save();
    });
  }

  ///Delete student data
  Future<void> deleteStudentData(int id) async {
    await DatabaseService.isarDb.writeTxn(() async {
      await DatabaseService.isarDb.students.delete(id);
    });
  }
}
