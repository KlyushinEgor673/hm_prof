import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/custom_nav_bar.dart';
import 'package:image_picker/image_picker.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({super.key});

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  child: Center(
                    child: Container(
                      height: heightScreen * (202 / 812),
                      width: widthScreen * (192 / 375),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 247, 250, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: SvgPicture.asset('images/add2.svg')),
                    ),
                  ),
                  onTap: () async {
                    return showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (BuildContext context) {
                        return SafeArea(
                          child: Wrap(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.photo_camera),
                                title: Text('Сделать фото'),
                                onTap: () async {
                                  Navigator.pop(context);
                                  await picker.pickImage(
                                    source: ImageSource.camera,
                                  );
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text('Выбрать из галереи'),
                                onTap: () async {
                                  Navigator.pop(context);

                                  await picker.pickMultiImage();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          CustomNavBar(active: 3),
        ],
      ),
    );
  }
}
