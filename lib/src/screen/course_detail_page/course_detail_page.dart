import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screen/course_detail_page/topic_course.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<StatefulWidget> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(children: [
              const Image(
                  image: NetworkImage(
                      "https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e")),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      const Text(
                          "Let's discuss how technology is changing the way we live",
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Overview",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: const [
                              Icon(FontAwesomeIcons.circleQuestion,
                                  color: Colors.red),
                              SizedBox(width: 10),
                              Text("Why take this course",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontFamily: "Poppins"))
                            ],
                          )),
                      const Text(
                          "Our world is rapidly changing thanks to new technology, and the vocabulary needed to discuss modern life is evolving almost daily. In this course you will learn the most up-to-date terminology from expertly crafted lessons as well from your native-speaking tutor.",
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: const [
                              Icon(FontAwesomeIcons.circleQuestion,
                                  color: Colors.red),
                              SizedBox(width: 10),
                              Text("What will you be able to do",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontFamily: "Poppins")),
                            ],
                          )),
                      const Text(
                          "You will learn vocabulary related to timely topics like remote work, artificial intelligence, online privacy, and more. In addition to discussion questions, you will practice intermediate level speaking tasks such as using data to describe trends.",
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Experience Level",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Row(children: [
                        Icon(Icons.group_add_outlined,
                            color: Colors.blue.shade400),
                        const SizedBox(width: 10),
                        const Text("Intermediate",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54))
                      ]),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Course Length",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.bookBookmark,
                              color: Colors.blue.shade400),
                          const SizedBox(width: 10),
                          const Text("9 lessons",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black54))
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "List Topics",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CourseTopicViewer(
                                          url:
                                              "https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afileThe%20Internet.pdf",
                                          title: "The Internet")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue[500],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            (index + 1).toString(),
                                            style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "The Internet",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ],
                  ))
            ]))));
  }
}
