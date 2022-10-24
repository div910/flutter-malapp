import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context,position){
            return _BuildPageItem(position);

          }),
    );

  }
  Widget _BuildPageItem(int index){
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5,right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF69c5df)
      ),
    );
  }
}