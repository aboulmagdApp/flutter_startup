import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerTest extends StatefulWidget {
  const ImagePickerTest({super.key});

  @override
  State<ImagePickerTest> createState() => _ImagePickerTestState();
}

class _ImagePickerTestState extends State<ImagePickerTest> {
  File? image;
  final imagepicker = ImagePicker();

  uploadImage() async {
    var pickedImagd = await imagepicker.getImage(source: ImageSource.camera);
    if (pickedImagd != null) {
      setState(() {
        image = File(pickedImagd.path);
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: uploadImage,
              child: Text('upload Image'),
            ),
          ),
          image == null
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('No pic choosen'),
                )
              : Image.file(image!)
        ],
      ),
    );
  }
}
