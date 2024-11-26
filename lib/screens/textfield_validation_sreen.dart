import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class TextfieldValidationSreen extends StatefulWidget {
  const TextfieldValidationSreen({super.key});

  @override
  State<TextfieldValidationSreen> createState() =>
      _TextfieldValidationSreenState();
}

class _TextfieldValidationSreenState extends State<TextfieldValidationSreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nomProduit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: IconButton(
            onPressed: () => print("Something"),
            icon: const Icon(
              CupertinoIcons.list_dash,
            ),
          ),
          middle: const CustomText(
            title: "Form-Validation",
            color: CupertinoColors.activeBlue,
          ),
          trailing: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media.licdn.com/dms/image/v2/D5612AQEuQhFnyZJPGg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1693065532807?e=2147483647&v=beta&t=jZmULs0JvxOIsXwyCiJII-QCdC5hYEcuzOpQ2pbnHXY"),
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoTextFormFieldRow(
                  controller: nomProduit,
                  placeholder: "Nom du produit",
                  cursorColor: CupertinoColors.white,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholderStyle: TextStyle(
                    color: CupertinoColors.white,
                  ),
                  validator: (value) {
                     if (value == null) {
                      return "La nom est obligatoire.";
                    }
                    return '';
                  },
                ),
                CupertinoTextFormFieldRow(
                  controller: nomProduit,
                  maxLines: 5,
                  placeholder: "Description du produit",
                  cursorColor: CupertinoColors.white,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholderStyle: TextStyle(
                    color: CupertinoColors.white,
                  ),
                  validator: (value) {
                    if (value == null) {
                      return "La description est obligatoire.";
                    }
                    return '';
                  },
                ),
                BasicWidgets.heightSize(20),
                CupertinoButton.filled(
                  padding: const EdgeInsets.all(8.0),
                  minSize: 20,
                  child: const CustomText(
                    title: 'Validation du produit',
                    fontSize: 16,
                  ),
                  onPressed: () => {
                    formKey.currentState!.save()
                  
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
