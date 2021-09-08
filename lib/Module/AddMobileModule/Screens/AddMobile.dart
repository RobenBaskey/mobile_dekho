import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:get/get.dart';
import 'package:mobile_dekho/Module/AddMobileModule/controller/addMobileController.dart';
import 'package:mobile_dekho/Size_Config.dart';

class AddMobiles extends StatefulWidget {
  static final String routeName = "/addmobile";

  @override
  _AddMobilesState createState() => _AddMobilesState();
}

class _AddMobilesState extends State<AddMobiles> {
  final addMobileController = Get.put(AddMobileController());

  var image;

  String brandValue = 'Samsung';
  var items = [
    'Samsung',
    'Xiaomi',
    'Realme',
    'Vivo',
    'Oppo',
    'Apple',
    "Symphony",
    "Tecno",
    "Walton",
    "Itel",
    "Infinix",
    "OnePlus",
    "Motorola",
    "Nokia"
  ];

  final _key = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  GetX<AddMobileController>(
                    builder: (controller) {
                      return GestureDetector(
                        onTap: () {
                         controller.getImage();
                        },
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.image.value == ''
                              ? Center(
                                  child: Icon(Icons.add_photo_alternate_sharp),
                                )
                              : Image.file(File(controller.image.value)),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Select Brand"),
                        DropdownButton(
                          value: brandValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              brandValue = newValue.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                      key: _key,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(hintText: "Name"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Name is required!";
                              }
                            },
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: "New Price"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Price is required!";
                              }
                            },
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: "Old Price"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Price is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "RAM"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Ram is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "ROM"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Rom is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Release date"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "First release date is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Colors"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Color is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Network"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Network is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Sim"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Sim is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "WLAN"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Wlan is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Bluetooth"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bluetooth is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "GPS"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "GPS is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Radio"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Radio is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "USB"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "USB is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "OTG"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "OTG is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "OTG..Type y/n"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "OTG is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Type C..Type y/n"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Type c is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "NFC..Type y/n"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "NFC is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Style"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Style is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Material"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Material is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Water Resistance"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Water resistance is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Dimensions"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Dimension is required!";
                              }
                            },
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: "Weight"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Weight is required!";
                              }
                            },
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(hintText: "Display size"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Display size is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Resolution"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Resolution is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Technology"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Technology is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Protection"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Protection is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Features"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Features is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Back Camera"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Back Camera is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Back Camera feature"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Back Camera feature is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Back Camera video"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Back Camera video is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Front Camera"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Front Camera is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Front Camera feature"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Front Camera feature is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Front Camera video"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Front Camera video is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Type and Capacity"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Type and capacity is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Fast Charging"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fast Charging is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Operating"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Operating system is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Chipset"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Chipset is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Processor"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Processor is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "GPU"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "GPU is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "MicroSD slot"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "MicroSD slot is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "3.5mm Jack"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "3.5mm jack is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Sound Features"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Sound Features is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Fingerprint"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fingerprint is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "FAce unlock"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Face unlock is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: "Notification light"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Notification light is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Sensors"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Sensors is required!";
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Made in"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Made in is required!";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.blueAccent),
                                  width: SizeConfig.screenWidth * 0.6,
                                  height: 50.0,
                                  child: Center(child: Text("Save Data")),
                                ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
