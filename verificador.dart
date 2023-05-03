void main(){

  existsIn(dynamic element, List<dynamic> list){

    int i = 0;
    for (int c = 0; c < list.length; c++){
      if (element != list[c]){
        i++;
      }
    }
    if (i == list.length){
        return false;
      } else {
        return true;
      }

  }

  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 9];

  if(existsIn(11, nums)){
    print('Existe');
  } else {
    print('Não existe');
  }

}