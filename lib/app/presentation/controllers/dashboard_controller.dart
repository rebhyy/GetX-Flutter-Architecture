// lib/presentation/controllers/dashboard_controller.dart

import 'package:get/get.dart';
import '../../domain/entities/course.dart';

class DashboardController extends GetxController {
  var userName = 'Christiana Amandla'.obs;
  var userImageUrl = 'https://example.com/user-profile-image.jpg'.obs;
  var completedCourses = 20.obs;
  var hoursSpent = 455.obs;
  
  var popularCourses = <Course>[
    Course(name: 'Photoshop Editing Course', icon: 'assets/icons/photoshop.png', rating: 4.8, lessons: 30),
    Course(name: 'Illustrator Editing Course', icon: 'assets/icons/illustrator.png', rating: 4.8, lessons: 30),
    Course(name: 'Adobe XD Editing Course', icon: 'assets/icons/adobe_xd.png', rating: 4.8, lessons: 30),
  ].obs;
}
