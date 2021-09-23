import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text('Instagram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24.0),
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Text('사진과 동영상을 보려면 팔로우 하세요'),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                      child: Card(
                        elevation: 4.0, // 그림자
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              const Padding(padding: EdgeInsets.all(4.0)),
                              const SizedBox(
                                width: 80.0,
                                height: 80.0,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                                ),
                              ),
                              const Text('chrismin1205@gmail.com', style: TextStyle(fontWeight: FontWeight.bold),),
                              const Padding(padding: EdgeInsets.all(4.0)),
                              const Text('김응민'),
                              const Padding(padding: EdgeInsets.all(8.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network('https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg',
                                      fit: BoxFit.cover),
                                  ),
                                  const Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr0kScNFjEYtJD1ypR__LVAL4kgDHfLWpZj0oR5SJX0AHiOf2WVTe2-Pdvx72zRoHT8pY&usqp=CAU',
                                        fit: BoxFit.cover),
                                  ),
                                  const Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    width: 70.0,
                                    height: 70.0,
                                    child: Image.network('https://post-phinf.pstatic.net/MjAxNzA2MjhfMjM4/MDAxNDk4NjU2MzgyNzkz.483tLYhwuZWJkjlaoylJOmugikPrngLkrdD11Rw0m-Ag.9EuU6nAsgO_P8f1ZvfOlD3-5yazjQ5bEOeO55leuV20g.PNG/10.PNG?type=w1200',
                                      fit: BoxFit.cover),
                                  )
                                ],
                              ),
                              const Padding(padding: EdgeInsets.all(4.0)),
                              const Text('페이스북 친구'),
                              const Padding(padding: EdgeInsets.all(4.0)),
                              RaisedButton(
                                child: Text('팔로우'),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                              const Padding(padding: EdgeInsets.all(4.0)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            )
          )
      ),
    );
  }
}
