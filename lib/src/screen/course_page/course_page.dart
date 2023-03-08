import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/course_page/component/course_card.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CourseCard(
              imgUrl:
                  "https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e",
              title: "Life in the Internet Age",
              level: "Intermediate",
              numberLesson: 9,
            );
          },
        ));
  }
}
