type person_t = {
  namae :string;
  m : int;
  kg : int;
  birthMonth : int;
  birthDate : int;
  bloodType : string;
};;

let person1 = {
  namae = "太郎";
  m = 15;
  kg = 65;
  birthMonth = 4;
  birthDate = 10;
  bloodType = "A";
};;

let person2 = {
  namae = "花子";
  m = 14;
  kg = 50;
  birthMonth = 12;
  birthDate = 3;
  bloodType = "O";
};;

let person3 = {
  namae = "次郎";
  m = 18;
  kg = 75;
  birthMonth = 7;
  birthDate = 21;
  bloodType = "B";
};;

person1::person2::person3::[];;