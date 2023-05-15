import 'dart:io';
import 'dart:math';


matrizGoogle(int ordem){

  /// lista que armazena a matriz
  List<dynamic> matriz = [];

  /// lista que guarda todas as posições (linha e coluna) que contém 1.
  List<dynamic> positions = [];

  /// lista responsável por armazenar temporariamente a resposta do usuário e averiguar se existe essa resposta na lista [positions].
  //List<int> rPosition = [];

  /// variável que guarda a quantidade de 1 que existe na matriz.
  int qPositions = 0;

  /// variável que o usuário vai usar para responder a linha que se encontra o 1.
  //int lPosition = 0;

  /// variável que o usuário vai usar para responder a coluna que se encontra o 1.
  //int cPoisiton = 0;

  /// sorteia um número, podendo ser 0 ou 1.
  Random random = Random();

  /// loop que adiciona os números à lista [matriz], verifica a quantidade de 1 que existe e adiciona a respectiva linha e coluna do 1 na lista [positions].
  for(int l = 0; l < ordem; l++){

    matriz.add([]);

    for(int c = 0; c < ordem; c++){

      int n = random.nextInt(2);
      matriz[l].add(n);
      
      if(n == 1){

        qPositions++;
        positions.add([l, c]);

      }

    }
  }

  Map<String, dynamic> results = {
    'matriz': matriz,
    'ordem': ordem,
    'qPositions': qPositions,
    'positions':positions,
  };

  return results;

}


void main(){

  Map<String, dynamic> result = matrizGoogle(2);

  for(int l = 0; l < result['ordem']; l++){
    for(int c = 0; c < result['ordem']; c++){
      stdout.write('${result['matriz'][l][c]}  ');
    }
    print('');
  }

  // lista que armazena temporariamente a respota do usuário.
  List<dynamic> rPosition = [];
  int qrPositions = 0;

  // interação com o usuário
  print('=-=-=-=-=-=-=-=-=-=- Teste =-=-=-=-=-=-=-=-=-=-');
  while(true){
    print('Linha do 1: ');
    int l = int.parse(stdin.readLineSync()!);

    print('Coluna do 1: ');
    int c = int.parse(stdin.readLineSync()!);

    rPosition.add([l, c]);

    print('enviar resposta? (digite 99 para enviar)');
    int f = int.parse(stdin.readLineSync()!);
    if(f==99){
      break;
    }
  }
  
  // verficação da resposta
  for(int x = 0; x < result['qPositions']; x++){
    if(rPosition[x] == result['positions'][x]){
      qrPositions++;
    }
  }
  if(qrPositions == result['qPositions']){
    print('Aprovado no teste');
  } else {
    print('Reprovado no teste');
  }



}
