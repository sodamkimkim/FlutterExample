import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context) // 콜백으로 넘겨받은 context사용.
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Urban Soft AL 10.0',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$699', // $쓸 때 \써야 문자열 $구나 알 수 있다.
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),

          // Icon위젯과 Text위젯을 양끝으로 벌릴 수 있다. 특정부분 분개해서 공간넣고 싶을 떄 활용할 수 있음.
          Spacer(), // 알아서 공간 채워
          Text("review"),
          Text(
            "(26)",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                shape: BoxShape.circle),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          //화면에 팝업창같은거 띄우기 위해서 context사용
          // 버튼 눌러졌을 때 alertDialog실행
          showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                    title: Text("장바구니에 담으시겠습니까?"),
                    actions: [
                      CupertinoDialogAction(
                        child: Text("확인"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ));
        },
        child: Text(
          'Add to Cart',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            //플러터에서는 static함수가 없기 때문에.. 명명된 생성자라고 함(이름이 있는 생성자)
            //클래스이름.메서드 (자바에서 static이랑 같음)
            // TextButton은 미리 스타일이 먹혀져 있는데, style재정의 할 때 shape사용.
            // InkWell, TextButton 등 onPressed필요할 때 쓰면 됨.
            backgroundColor: Colors.orange[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            minimumSize: Size(300, 50)),
      ),
    );
  }
}
