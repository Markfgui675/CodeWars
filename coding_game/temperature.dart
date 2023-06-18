import 'dart:io';
import 'dart:math';

void main(){

  List inputs;
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
        inputs = stdin.readLineSync()!.split(' ');
        print(inputs);
        //int landX = int.parse(inputs[0]); // X coordinate of a surface point. (0 to 6999)
        //int landY = int.parse(inputs[1]); // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    }

}