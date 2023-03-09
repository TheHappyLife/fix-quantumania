// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//Library custom widget
// import 'dart:ffi';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import "../../components/kyc_success/kyc_success_widget.dart";

class KycTakePhoto extends StatefulWidget {
  const KycTakePhoto({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _KycTakePhotoState createState() => _KycTakePhotoState();
}

class _KycTakePhotoState extends State<KycTakePhoto> {
  String faceIdentifier = 'Front';
  String? takeImageFrontSuccess;
  String? takeImageBackSuccess;
  bool? cancleTimer = false;
  String fileFront = "";
  String fileBack = "";
  List<XFile>? files;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  convertFaceIdentifier(String face) {
    setState(() {
      faceIdentifier = face;
    });
  }

  checkImageFront(String status) {
    print(status);
    setState(() {
      takeImageFrontSuccess = status;
    });
  }

  checkImageBack(String status) {
    print(status);
    setState(() {
      takeImageBackSuccess = status;
    });
  }

  setStateTimerBtn() {
    setState(() {
      cancleTimer = false;
    });
  }

  setStateTimerTakePicture() {
    setState(() {
      cancleTimer = true;
    });
  }

  setStateFileFront(filePath) {
    setState(() {
      fileFront = filePath;
    });
  }

  setStateFileBack(filePath) {
    setState(() {
      fileBack = filePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    //call api

    String token = FFAppState().accessToken;

    Future<bool> _sendFiles(List<XFile> files) async {
      try {
        setState(() {
          isLoading = true;
        });

        Dio dio = Dio();
        List uploadList = [];

        String uri =
            'https://q-quantummania-cms.dev-tn.com/investment/api/v1/kyc';

        var formData = FormData();

        for (var file in files) {
          formData.files.addAll([
            MapEntry(
              "files",
              await MultipartFile.fromFile(file.path,
                  filename: file.name, contentType: MediaType("image", "jpeg")),
            )
          ]);
        }

        var response = await dio.post(uri,
            data: formData,
            options: Options(headers: {
              HttpHeaders.authorizationHeader: "Bearer $token",
            }));

        print(response.statusCode);
        setState(() {
          isLoading = false;
        });
        return true;
      } catch (err) {
        return false;
        print("Error when call api $err");
      }
    }

    // action submit
    Future<bool> _asyncUploadImage() async {
      if (fileFront.isEmpty || fileBack.isEmpty) {
        print("Submit failure");
      }

      XFile file_1 = XFile(fileFront);
      XFile file_2 = XFile(fileBack);
      List<XFile> files = [file_1, file_2];

      bool sendFile = await _sendFiles(files);

      return sendFile;
    }

    return MaterialApp(
      title: "App KYC",
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          faceIdentifier == "Front"
              ? TakePictureScreen(
                  face: "Front",
                  takeImageFrontSuccess: checkImageFront,
                  setStateTimerTakePicture: setStateTimerTakePicture,
                  cancleTimer: cancleTimer,
                  setStateFileFront: setStateFileFront,
                )
              : TakePictureScreen(
                  face: "Back",
                  takeImageBackSuccess: checkImageBack,
                  setStateTimerTakePicture: setStateTimerTakePicture,
                  cancleTimer: cancleTimer,
                  setStateFileBack: setStateFileBack,
                ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButttonComponent(
                  convertFace: convertFaceIdentifier,
                  content: "Front",
                  statusTakeImage: takeImageFrontSuccess,
                  setStateTimer: setStateTimerBtn,
                  faceIdentifier: faceIdentifier,
                ),
                ButttonComponent(
                  convertFace: convertFaceIdentifier,
                  content: "Back",
                  statusTakeImage: takeImageBackSuccess,
                  setStateTimer: setStateTimerBtn,
                  faceIdentifier: faceIdentifier,
                )
              ],
            ),
          ),
          fileFront.isNotEmpty && fileBack.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 345,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () async {
                        bool sendFile = await _asyncUploadImage();
                        if (sendFile) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x4D000000),
                            barrierColor: Color(0x4D000000),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  child: KycSuccessWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(253, 197, 54, 100)),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(
                                color: Colors.black87,
                                strokeWidth: 2.5,
                              ))
                          : const Text(
                              "Complete",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87),
                            ),
                    ),
                  ))
              : const SizedBox(
                  width: 0,
                  height: 0,
                ),
        ],
      )),
    );
  }
}

class ButttonComponent extends StatefulWidget {
  final String? content;
  final Function convertFace;
  final Function? setStateTimer;
  late String? statusTakeImage;
  final String? faceIdentifier;

  ButttonComponent(
      {Key? key,
      this.content,
      this.statusTakeImage,
      this.setStateTimer,
      this.faceIdentifier,
      required this.convertFace})
      : super(key: key);

  @override
  _ButttonComponentState createState() => _ButttonComponentState();
}

class _ButttonComponentState extends State<ButttonComponent> {
  @override
  Widget build(BuildContext context) {
    print(widget.content);
    print(widget.faceIdentifier);

    return SizedBox(
        width: 95,
        height: 48,
        child: widget.statusTakeImage != "success"
            ? Padding(
                padding: const EdgeInsets.all(5),
                child: OutlinedButton(
                    onPressed: () {
                      widget.setStateTimer!();
                      widget.convertFace(widget.content);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      backgroundColor: widget.faceIdentifier == widget.content
                          ? const MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(252, 246, 232, 100))
                          : const MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(252, 246, 232, 0)),
                      side: MaterialStateProperty.resolveWith((states) {
                        return widget.content == widget.faceIdentifier
                            ? const BorderSide(
                                color: Color.fromRGBO(253, 197, 54, 100),
                                width: 1.5)
                            : const BorderSide(
                                color: Color.fromRGBO(253, 197, 54, 0),
                                width: 0);
                      }),
                    ),
                    child: Text(
                      widget.content!,
                      style: widget.content == widget.faceIdentifier
                          ? const TextStyle(
                              color: Color.fromRGBO(253, 197, 54, 100),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)
                          : const TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                    )))
            : GestureDetector(
                onTap: () {
                  widget.setStateTimer!();
                  widget.convertFace(widget.content);
                },
                child: SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.network(
                          "https://res.cloudinary.com/dqph1i6aw/image/upload/v1675506765/Quantumania/identifier-success_qnlu1r.png")),
                ),
              ));
  }
}

class TakePictureScreen extends StatefulWidget {
  final String? face;
  final Function? takeImageFrontSuccess;
  final Function? takeImageBackSuccess;
  final Function? setStateTimerTakePicture;
  final bool? cancleTimer;
  final Function? setStateFileFront;
  final Function? setStateFileBack;

  const TakePictureScreen(
      {Key? key,
      this.face,
      this.cancleTimer,
      this.setStateTimerTakePicture,
      this.takeImageFrontSuccess,
      this.setStateFileFront,
      this.setStateFileBack,
      this.takeImageBackSuccess})
      : super(key: key);

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool camera = false;

  late String imageFront = "";

  late String imageBack = "";
  Timer? timer;

  @override
  void initState() {
    super.initState();

    _asyncMethod() async {
      WidgetsFlutterBinding.ensureInitialized();
      // Obtain a list of the available cameras on the device.
      final cameras = await availableCameras();
      // Get a specific camera from the list of available cameras.
      final firstCamera = cameras.first;

      // To display the current output from the Camera,
      // create a CameraController.
      _controller = CameraController(
        // Get a specific camera from the list of available cameras.
        firstCamera,
        // Define the resolution to use.
        ResolutionPreset.medium,
      );

      // Next, initialize the controller. This returns a Future.
      _initializeControllerFuture = _controller.initialize();

      setState(() {
        camera = true;
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (imageFront.isNotEmpty) {
      timer = Timer(const Duration(seconds: 1), () {
        widget.setStateFileFront!(imageFront);
      });

      if (widget.cancleTimer!) {
        timer?.cancel();
      }
    }

    if (imageBack.isNotEmpty) {
      timer = Timer(const Duration(seconds: 1), () {
        widget.setStateFileBack!(imageBack);
      });

      if (widget.cancleTimer!) {
        timer?.cancel();
      }
    }

    if (widget.face == "Front") {
      if (imageFront.isEmpty) {
        return Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 450,
              child: FutureBuilder(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (camera &&
                      snapshot.connectionState == ConnectionState.done) {
                    // If the Future is complete, display the preview.
                    return CameraPreview(_controller);
                  } else {
                    // Otherwise, display a loading indicator.
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 370.0),
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        // Ensure that the camera is initialized.
                        await _initializeControllerFuture;
                        final image = await _controller.takePicture();

                        if (!mounted) return;

                        setState(() {
                          imageFront = image.path;
                        });

                        // // If the picture was taken, display it on a new screen.
                        // await Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => DisplayPictureScreen(
                        //       // Pass the automatically generated path to
                        //       // the DisplayPictureScreen widget.
                        //       imagePath: image.path,
                        //     ),
                        //   ),
                        // );
                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    },
                    child: const Icon(Icons.camera_alt),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      )),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(253, 197, 54, 100)),
                      side: MaterialStateProperty.resolveWith((states) {
                        return const BorderSide(
                            color: Color.fromRGBO(253, 197, 54, 100),
                            width: 1.5);
                      }),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      } else {
        timer = Timer(const Duration(seconds: 1), () {
          widget.takeImageFrontSuccess!("success");
          widget.setStateTimerTakePicture!();
        });

        if (widget.cancleTimer!) {
          timer?.cancel();
        }
        return DisplayPictureScreen(imagePath: imageFront);
      }
    } else {
      if (imageBack.isEmpty) {
        return Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 450,
              child: FutureBuilder(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (camera &&
                      snapshot.connectionState == ConnectionState.done) {
                    // If the Future is complete, display the preview.
                    return CameraPreview(_controller);
                  } else {
                    // Otherwise, display a loading indicator.
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 370.0),
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        // Ensure that the camera is initialized.
                        await _initializeControllerFuture;
                        final image = await _controller.takePicture();

                        if (!mounted) return;

                        setState(() {
                          imageBack = image.path;
                        });
                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    },
                    child: const Icon(Icons.camera_alt),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      )),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(253, 197, 54, 100)),
                      side: MaterialStateProperty.resolveWith((states) {
                        return const BorderSide(
                            color: Color.fromRGBO(253, 197, 54, 100),
                            width: 1.5);
                      }),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      } else {
        timer = Timer(const Duration(seconds: 1), () {
          widget.takeImageBackSuccess!("success");
          widget.setStateTimerTakePicture!();
        });

        if (widget.cancleTimer!) {
          timer?.cancel();
        }

        return DisplayPictureScreen(imagePath: imageBack);
      }
    }
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      child: Image.file(
        File(imagePath),
        fit: BoxFit.cover,
      ),
    );
  }
}
