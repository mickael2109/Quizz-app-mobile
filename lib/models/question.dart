
// ignore_for_file: prefer_initializing_formals

class Question {
  String question='';
  bool reponse=false;
  String explication='';
  String imagePath='';

  Question(String question, bool reponse, String explication, String imagePath){
    this.question = question;
    this.reponse = reponse;
    this.explication = explication;
    this.imagePath = imagePath;
  }
}