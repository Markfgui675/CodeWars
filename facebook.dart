void main() {
  
  print(Like([]));
  print(Like(['Peter']));
  print(Like(['Peter', 'Jacob']));
  print(Like(['Peter','Jacob','Mark']));
  print(Like(['Peter', 'Jacob', 'Mark', 'Max']));
  print(Like(['Peter', 'Jacob', 'Mark', 'Max', 'Alex']));

}

Like(names){

  if(names.length == 0){
    return 'no one like this';
  } else if(names.length == 1){
    return '${names[0]} like this';
  } else if(names.length == 2){
    return '${names[0]} and ${names[1]} like this';
  } else if(names.length == 3){
    return '${names[0]}, ${names[1]} and ${names[2]} like this';
  } else if(names.length > 3){
    return '${names[0]} and ${names[1]} and ${(names.length)-2} others like this';
  }

}