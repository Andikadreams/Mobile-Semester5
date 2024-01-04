void main() {
  // ARITMATIC
  var first = 100;
  print("first = $first");
  var second = 50;
  print("second = $second");

  print("Hasil bil1 + bil2 =");
  print(first+second);
  print("Hasil bil1 - bil2 =");
  print(first-second);
  print("Hasil bil1 * bil2 =");
  print(first*second);
  print("Hasil bil1 / bil2 =");
  print(first/second);
  print("Hasil first ~/ second =");
  print(first~/second);

  // BOOLEAN
  print("Perbandingan bil > bil2");
  print(first>second);
  print("Perbandingan bil < bil2");
  print(first<second);
  print("Perbandingan bil == bil2");
  print(first==second);
  print("Perbandingan bil != bil2");
  print(first!=second);
  print("Perbandingan bil >= bil2");
  print(first>=second);
  print("Perbandingan bil <= bil2");
  print(first<=second);

  // BOOLEAN
  var firstWord = 'REAL';
  var secondWord = 'real';

  print("Apakah $firstWord == $secondWord");
  print(firstWord==secondWord);
  print("Apakah $firstWord != $secondWord");
  print(firstWord!=secondWord);

  // INCREMENT
  var a=5;
  print("var a = $a");
  a++;
  print("var a = $a");
  var b = a++;
  print(a);
  print(b);

  // DECREMENT
  var c = 10;
  print("var c = $c");
  c--;
  print("var c = $c");
  var d = c--;
  print(c);
  print(d);


}