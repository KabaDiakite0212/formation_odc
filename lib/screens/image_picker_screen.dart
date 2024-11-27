import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? selectedImage;
  File? selectedImageCamera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 30,
        title: const CustomText(
          title: "Image Picker",
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BasicWidgets.heightSize(20),
            InkWell(
              onTap: () async {
                var imageGallery =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                setState(() {
                  selectedImage = File(imageGallery!.path);
                });
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: selectedImage != null
                    ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.file(
                          selectedImage!,
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                    )
                    : const Center(
                        child: CustomText(
                          title: "Image - Gallerie",
                        ),
                      ),
              ),
            ),
           
            BasicWidgets.heightSize(20),
            InkWell(
              onTap: () async {
                var imageCamera =
                    await ImagePicker().pickImage(source: ImageSource.camera);
                setState(() {
                  selectedImageCamera = File(imageCamera!.path);
                });
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: selectedImageCamera != null
                    ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.file(
                          selectedImageCamera!,
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                    )
                    : const Center(
                        child: CustomText(
                          title: "Image - Camera",
                        ),
                      ),
              ),
            ),
           
            BasicWidgets.heightSize(20),
          ],
        ),
      ),
    );
  }
}
