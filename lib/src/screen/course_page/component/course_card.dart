import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/course_detail_page/course_detail_page.dart';

class CourseCard extends StatefulWidget {
  const CourseCard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.numberLesson,
      required this.level});

  final String imgUrl;
  final String title;
  final int numberLesson;
  final String level;

  @override
  State<StatefulWidget> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.all(20),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CourseDetailPage()));
        },
        child: Column(
          children: [
            Image(
              image: NetworkImage(widget.imgUrl),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.level),
                  Text.rich(TextSpan(
                      text: widget.numberLesson.toString(),
                      children: const [TextSpan(text: " lesson")]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
