import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.exit_to_app, color: Colors.black,),
            onPressed:() {}
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                    ),
                  ),
                  Container(
                    // 사이즈를 위의 사이즈 박스와 맞춰야 위치 변경됨
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 28.0,
                          height: 28.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              const Text('이름', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)
            ],
          ),
          const Text('0\n게시물',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0),),
          const Text('0\n게시물',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0),),
          const Text('0\n게시물',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0),  ),
        ],
      ),
    );
  }
}
