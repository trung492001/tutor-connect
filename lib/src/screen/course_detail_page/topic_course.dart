import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CourseTopicViewer extends StatefulWidget {
  const CourseTopicViewer({Key? key, required this.url, required this.title})
      : super(key: key);
  final String url;
  final String title;

  @override
  State<CourseTopicViewer> createState() => _CourseTopicViewerState();
}

class _CourseTopicViewerState extends State<CourseTopicViewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 20,
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey[800]),
          title: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: SfPdfViewer.network(
              widget.url,
              canShowScrollHead: false,
              canShowScrollStatus: false,
            ),
          ),
        ),
      ),
    );
  }
}
