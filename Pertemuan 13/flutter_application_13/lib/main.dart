import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraApp(camera: camera),
    );
  }
}

class CameraApp extends StatefulWidget {
  final CameraDescription camera;

  const CameraApp({Key? key, required this.camera}) : super(key: key);

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool isCameraOn = true; // Untuk melacak status kamera (nyala/mati)
  ResolutionPreset currentResolution = ResolutionPreset.medium;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      currentResolution,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Metode untuk mengubah status kamera (nyala/mati)
  void toggleCamera() {
    setState(() {
      isCameraOn = !isCameraOn;
      if (isCameraOn) {
        _controller = CameraController(
          widget.camera,
          currentResolution,
        );
        _initializeControllerFuture = _controller.initialize();
      } else {
        _controller.dispose();
      }
    });
  }

  // Metode untuk mengubah resolusi kamera
  void changeResolution() {
    setState(() {
      currentResolution = currentResolution == ResolutionPreset.medium
          ? ResolutionPreset.high
          : ResolutionPreset.medium;
      if (isCameraOn) {
        _controller = CameraController(
          widget.camera,
          currentResolution,
        );
        _initializeControllerFuture = _controller.initialize();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andika Ainur Wibowo'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: ClipRect(
                child: OverflowBox(
                  alignment: Alignment.center,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      width: _controller.value.previewSize!.height,
                      height: _controller.value.previewSize!.width,
                      child: CameraPreview(_controller),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: toggleCamera,
            child: Icon(isCameraOn ? Icons.videocam_off : Icons.videocam),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: changeResolution,
            child: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
