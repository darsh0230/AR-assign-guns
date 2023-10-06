// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class VRScreen extends StatefulWidget {
  String modelUrl;
  String modelName;
  String description;
  VRScreen(
      {Key? key,
      required this.modelUrl,
      required this.modelName,
      required this.description})
      : super(key: key);

  @override
  _VRScreenState createState() => _VRScreenState();
}

class _VRScreenState extends State<VRScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.modelName,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue[50],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add a 3D model here if available. Replace 'model_url_here' with the actual model URL.
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: widget.modelUrl, // Add your 3D model URL
                ar: true,
                alt: 'A 3D model',
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.modelName,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            widget.description,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
