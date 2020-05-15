class CounterService {

  int _count = 0;
  
  int increment(){
    return _count += 1;
  }
  
}