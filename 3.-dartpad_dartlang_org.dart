
void main(){
  
  final square = new Square();
  
  square.setSide = 15;
  print(square);
  print('The area is: ${square.getArea}');
}


class Square{
  
  double _side;
  //double _area;
  
  set setSide(double side){
    
    if(side <= 0){
      throw('The value cannot be negative or zero');
    }
    
    _side=side;
  }
  
  double get getArea{
    return _side*_side;
  }
  
  toString() => 'The value of "Side" is: $_side';
}
