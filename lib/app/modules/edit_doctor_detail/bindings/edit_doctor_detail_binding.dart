import 'package:get/get.dart';


import '../controllers/edit_doctor_detail_controller.dart';

class EditDoctorDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditDoctorDetailController>(
      () => EditDoctorDetailController(),
    );
  }
}
