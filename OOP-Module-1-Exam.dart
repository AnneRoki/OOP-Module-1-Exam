//this class show encapsulation because  i houses all the necessary properties of the class player to be used
class Player{
  bool damagedealer=true;
  bool healer=false;
  bool tank=false;
  status(){
    print("Damage Dealer :");
    print(damagedealer);
    print("Healer :");
    print(healer);
    print("Tank :");
    print(tank);
   }
  items(){
    print("Items equiped: \nEmerald helm\n Emerald chestplate\n Emerald boots \n");
  }
 // this part shows abstraction as it simpifies the process by using only one method the contains other method to be used
  playercharacter(){
    status();
    items();
  }
    
}
// this part show the inheritance as both classes below are using the methods and the variables from the main class Player
class Assassin extends Player{}
//this part show the polymorphism as it change the value of a varibale that it inherited to be used only by this class
class Paladin extends Player{
  bool tank=true;
}
void main(){
  Paladin pa =new Paladin();
  
  Assassin ass =new Assassin();
  
  print(pa.playercharacter());
  print(ass.playercharacter());
}