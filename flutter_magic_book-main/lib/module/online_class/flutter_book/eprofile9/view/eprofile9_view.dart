import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile9_controller.dart';

class EProfile9View extends StatefulWidget {
  const EProfile9View({Key? key}) : super(key: key);

  Widget build(context, EProfile9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile9"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<EProfile9View> createState() => EProfile9Controller();
}
