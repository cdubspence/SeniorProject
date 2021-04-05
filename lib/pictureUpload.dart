import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class PictureUpload extends StatefulWidget {
  State<StatefulWidget> createState() => new PictureUploadState();
}

class PictureUploadState extends State<PictureUpload> {

  final picker = ImagePicker();
  var imageFile;
  _openCamera(BuildContext context) async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera, maxWidth: 480, maxHeight: 600);
    this.setState(() {
     // imageFile = File(pickedFile.path);
      imageFile = pickedFile;
    });
    Navigator.of(context, rootNavigator: true).pop();
  }

  _openGallery(BuildContext context) async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery, maxWidth: 480, maxHeight: 600 );

    //imageFile = File(pickedFile.path);
    imageFile = pickedFile;

    Navigator.pop(context);
  }
  Future<void> showPostPrompt(BuildContext context) {
    return showDialog(context: context,builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Take a picture or upload?'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  _openCamera(context);
                },
                label: Text('Camera'),
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  _openGallery(context);
                },
                label: Text('Gallery'),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 175,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: FileImage(imageFile),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}