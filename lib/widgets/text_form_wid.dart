import 'package:flutter/material.dart';
import 'package:whatsapp/helper/data_helper.dart';

class MyTextForm extends StatefulWidget {
  final Function elemanEklendi;
  const MyTextForm({required this.elemanEklendi ,super.key});

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  bool showIcons = true;
  var myKey = GlobalKey<FormState>();
  String? mesaj = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Form(
            key: myKey,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: emoji(),
                suffixIcon: showIcons ? icons() : atac(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: "Mesaj",
              ),
              onChanged: karakterGirdiginde,
              validator: (value) {
                if (value!.isEmpty) {
                  return;
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                mesaj = newValue;
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: FloatingActionButton(
            onPressed: () {
              if (myKey.currentState!.validate()) {
                myKey.currentState!.save();
                DataHelper.add(mesaj!);
                widget.elemanEklendi();
                myKey.currentState!.reset();
                showIcons = true;
                print("$mesaj");
              }
            },
            child: showIcons
                ? const Icon(Icons.mic)
                : const Icon(
                    Icons.arrow_right,
                    size: 42,
                  ),
          ),
        )
      ],
    );
  }

  void karakterGirdiginde(value) {
    setState(() {
      if (value.isEmpty) {
        showIcons = true;
      } else {
        showIcons = false;
      }
    });
  }

  Icon atac() {
    return Icon(
      Icons.attachment,
      color: Colors.grey.shade600,
    );
  }

  IconButton emoji() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.emoji_emotions_outlined),
      color: Colors.grey,
    );
  }

  Row icons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.attachment,
          color: Colors.grey.shade600,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt_rounded,
          ),
          color: Colors.grey.shade600,
        ),
      ],
    );
  }
}
