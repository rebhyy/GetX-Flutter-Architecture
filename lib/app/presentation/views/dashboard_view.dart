// lib/presentation/views/dashboard_view.dart

import 'package:codingjunior/app/domain/entities/course.dart';
import 'package:codingjunior/app/presentation/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/core/config/app_colors.dart';
import '../../../app/core/config/app_text_styles.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserHeader(),
            _buildMathematicsCourseCard(),
            _buildPopularCourses(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(controller.userImageUrl.value),
            radius: 30,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.userName.value,
                style: AppTextStyles.titleStyle,
              ),
              Text(
                'Lets Learning to smart',
                style: AppTextStyles.subtitleStyle,
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildMathematicsCourseCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.greenAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Mathematics Course', style: AppTextStyles.cardTitleStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Completed', style: AppTextStyles.smallText),
              Text('${controller.completedCourses}',
                  style: AppTextStyles.boldText),
              Text('Hours Spent', style: AppTextStyles.smallText),
              Text('${controller.hoursSpent}', style: AppTextStyles.boldText),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPopularCourses() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Popular Courses', style: AppTextStyles.sectionTitleStyle),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: controller.popularCourses.length,
            itemBuilder: (context, index) {
              final course = controller.popularCourses[index];
              return _buildCourseCard(course);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(Course course) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(course.icon),
          SizedBox(height: 8),
          Text(course.name, style: AppTextStyles.courseTitleStyle),
          Text('${course.lessons} Lessons', style: AppTextStyles.smallText),
          Text('${course.rating}', style: AppTextStyles.ratingStyle),
        ],
      ),
    );
  }
}
