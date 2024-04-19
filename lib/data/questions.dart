import 'package:quizzler_medium/model/questions.dart';

class QuestionsBank {
  final List<Questions> _questions = [
    Questions(
        question:
            'Bulan banyak bopengnya apakah tanda dulu pernah mengalami puber ?',
        answer: '0'),
    Questions(
        question: 'Ayam terlahir lebih dulu dibandingkan telur ?', answer: '1'),
    Questions(question: 'Hujan turun karena kesedihan awan ?', answer: '0'),
    Questions(
        question: 'Hidup sulit karena anda yang buat menjadi sulit ?',
        answer: '1'),
    Questions(
        question:
            'Laut terasa asin karena keringat ikan berkumpul menjadi satu ?',
        answer: '0'),
    Questions(
        question:
            'Manusia cenderung membenarkan apa yang di senangi/membuat nyaman, apakah manusia halu akan menghasilkan nilai kebenaran yang halu juga ?',
        answer: '1'),
    Questions(
        question:
            'Matahari dijauhkan letaknya karena panasnya itu toxic untuk circle nya ?',
        answer: '1'),
    Questions(question: 'Apakah bumi itu bulat', answer: '1'),
    Questions(
        question:
            'Apakah muka berminyak bisa diproduksi untuk menggantikan kelapa sawit ?',
        answer: '0'),
    Questions(question: 'Apakah hidup itu indah ?', answer: '1'),
  ];

  List<Questions> get questions {
    return _questions;
  } // underscore is mean the property is private, so you can not change the value in that properties
}
