import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../controllers/home_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';
import '../../../data/models/province_model.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ONGKOS KIRIM'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
              label: "Provinsi",
              onFind: (String filter) async {
                Uri url =
                    Uri.parse("https://api.rajaongkir.com/starter/province");
                    try {
                      final Response = await http.get(
                        url,
                        headers: {
                          "key" : "1e05552c3337d4d2dcd7e6bd3e0456cb",
                        },
                      );
                      var data = jsonDecode(Response.body) as Map<String, dynamic>;
                      
                    }
              })
        ],
      ),
    );
  }
}
