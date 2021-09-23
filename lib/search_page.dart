import 'package:flutter/material.dart';

import 'create_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create),
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreatePage())
            );
          }
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1.0, // 이미지들의 가로세로 비율
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0),
    itemCount: 5,
    itemBuilder: (context, index) {
      return _buildListItem(context, index);
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network('https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg',
        fit: BoxFit.cover);
  }
}
