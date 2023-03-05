import 'package:flutter/material.dart';

class DialogAddRequest extends StatefulWidget {
  Function saveNote;
  DialogAddRequest({super.key, required this.saveNote});

  @override
  State<StatefulWidget> createState() => _DialogAddRequestState();
}

class _DialogAddRequestState extends State<DialogAddRequest> {
  final _formKey = GlobalKey<FormState>();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: const Text('Special Request'),
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text.rich(TextSpan(text: "Note ", children: [
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ])),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              expands: false,
                              maxLines: 6,
                              minLines: 6,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                              ),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Notes cannot be empty!';
                                }
                                return null;
                              },
                              controller: _controller,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Cancel")),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      widget.saveNote(_controller.value.text);
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: const Text('Submit'),
                                ),
                              ],
                            )
                          ],
                        ))
                  ]))
        ]);
  }
}
