import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {};
  //Random 클래스 사용
  Random random = Random();
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  print(lotto);

  List<int> lottoList = lotto.toList();
  lottoList.sort(); //List는 순서가 있기때문에 정렬을 할 수가 있다.
  print(lottoList);
} // end of main