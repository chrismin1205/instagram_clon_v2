import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  final textEditingController = TextEditingController();

  File _image;
  // final picker = ImagePicker();

  @override
  void dispose() {
    textEditingController.dispose(); // textEditingController 는 메모리 해제를 해줘야하는 객체임
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _getImage,
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back, color: Colors.black,)),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(Icons.send, color: Colors.black,))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _image == null ? const Text('No Image') : Image.file(_image),
          TextField(
            decoration: const InputDecoration(hintText: '내용을 입력하세요.'),
            controller: textEditingController,
          )
        ],
      ),
    );
  }

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
}
