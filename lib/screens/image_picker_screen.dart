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
  List<File>? mutliSelectedImage;

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // BasicWidgets.heightSize(20),
              // InkWell(
              //   onTap: () async {
              //     var imageGallery =
              //         await ImagePicker().pickImage(source: ImageSource.gallery);
              //     setState(() {
              //       selectedImage = File(imageGallery!.path);
              //     });
              //   },
              //   child: Container(
              //     margin: const EdgeInsets.all(10),
              //     height: 300,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         color: Colors.grey.shade300,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: selectedImage != null
              //         ? ClipRRect(
              //             borderRadius: BorderRadius.circular(20),
              //             child: Image.file(
              //               selectedImage!,
              //               height: 300,
              //               width: double.infinity,
              //               fit: BoxFit.cover,
              //             ),
              //           )
              //         : const Center(
              //             child: CustomText(
              //               title: "Image - Gallerie",
              //             ),
              //           ),
              //   ),
              // ),
              // BasicWidgets.heightSize(20),
              // InkWell(
              //   onTap: () async {
              //     var imageCamera =
              //         await ImagePicker().pickImage(source: ImageSource.camera);
              //     setState(() {
              //       selectedImageCamera = File(imageCamera!.path);
              //     });
              //   },
              //   child: Container(
              //     margin: const EdgeInsets.all(10),
              //     height: 300,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         color: Colors.grey.shade300,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: selectedImageCamera != null
              //         ? ClipRRect(
              //             borderRadius: BorderRadius.circular(20),
              //             child: Image.file(
              //               selectedImageCamera!,
              //               height: 300,
              //               width: double.infinity,
              //               fit: BoxFit.cover,
              //             ),
              //           )
              //         : const Center(
              //             child: CustomText(
              //               title: "Image - Camera",
              //             ),
              //           ),
              //   ),
              // ),
              BasicWidgets.heightSize(5),
              ElevatedButton(
                onPressed: () async {
                  List<XFile> multiImage =
                      await ImagePicker().pickMultiImage(limit: 3);

                  List<File> fileMapped =
                      multiImage.map((file) => File(file.path)).toList();
                  setState(() {
                    mutliSelectedImage = fileMapped;
                  });
                },
                child: CustomText(
                  title: "Select MultiImage",
                ),
              ),
              BasicWidgets.heightSize(20),

              mutliSelectedImage != null
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height / 1.2,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: mutliSelectedImage!.length,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: const EdgeInsets.all(10),
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.file(
                                    mutliSelectedImage![index],
                                    height: 300,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                          }),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
