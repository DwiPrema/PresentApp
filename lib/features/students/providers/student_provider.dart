import 'package:absensi_kelas/features/students/models/student_model.dart';
import 'package:absensi_kelas/features/students/services/student_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final studentProviders =
    AsyncNotifierProvider.family<StudentNotifier, List<Student>, int>(
        StudentNotifier.new);

class StudentNotifier extends FamilyAsyncNotifier<List<Student>, int> {
  final service = StudentService();

  late int classId;

  @override
  Future<List<Student>> build(int arg) async {
    classId = arg;
    return service.getStudentByClass(classId);
  }

  Future<void> createData(Student student) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await service.createStudentData(student);
      return service.getStudentByClass(classId);
    });
  }

  Future<void> deleteData(int id) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await service.deleteStudentData(id);
      return service.getStudentByClass(classId);
    });
  }

  Future<void> updateData(Student student) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await service.updateStudentData(student);
      return service.getStudentByClass(classId);
    });
  }
}
