import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  TextEditingController nomProduit = TextEditingController();
  TextEditingController descriptionProduit = TextEditingController();
  TextEditingController prixProduit = TextEditingController();

  void sendProduct() {
    Map<String, dynamic> data = {
      "nom": nomProduit.text,
      "description": descriptionProduit.text,
      "prix": prixProduit.text,
    };
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: nomProduit,
              decoration: InputDecoration(
                hintText: "Veuillez saisir le nom du produit",
                labelText: "Nom",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                prefixIcon: Icon(Icons.production_quantity_limits),
              ),
            ),
          ),
          BasicWidgets.heightSize(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: descriptionProduit,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Veuillez saisir la description",
                labelText: "Description",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                prefixIcon: Icon(Icons.title_outlined),
              ),
            ),
          ),
          BasicWidgets.heightSize(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              controller: prixProduit,
              decoration: InputDecoration(
                hintText: "Veuillez saisir le prix",
                labelText: "Prix",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                prefixIcon: Icon(Icons.money_rounded),
              ),
            ),
          ),
          BasicWidgets.heightSize(20),
          CupertinoButton.filled(
            child: CustomText(title: "Création"),
            onPressed: () => sendProduct(),
          )
        ],
      ),
    ));
  }
}
