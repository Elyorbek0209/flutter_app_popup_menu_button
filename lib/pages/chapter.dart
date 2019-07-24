import 'dart:ui';


class Chapter{


  String chapterName;

  String chapterQuestions;

  int color1, color2;


  Chapter({
    
    this.chapterName, 
    
    this.chapterQuestions, 
    
    this.color1, 
    
    this.color2
    
  });



  static List<Chapter> chapterList(){


    var listOfChapter = new List<Chapter>();

    listOfChapter.add(new Chapter(chapterName:'Chapter 1', chapterQuestions:'Questions 10', color1:0xff880e4f, color2:0xff01579b));

    listOfChapter.add(new Chapter(chapterName:'Chapter 2', chapterQuestions:'Questions 20', color1:0xfff3e5f5, color2:0xffd81b60));

    listOfChapter.add(new Chapter(chapterName:'Chapter 3', chapterQuestions:'Questions 30', color1:0xffba68c8, color2:0xffff6f00));

    listOfChapter.add(new Chapter(chapterName:'Chapter 4', chapterQuestions:'Questions 40', color1:0xffefebe9, color2:0xff4a148c));

    listOfChapter.add(new Chapter(chapterName:'Chapter 5', chapterQuestions:'Questions 50', color1:0xffff6f00, color2:0xffefebe9));

    listOfChapter.add(new Chapter(chapterName:'Chapter 6', chapterQuestions:'Questions 60', color1:0xff8bc34a, color2:0xff8e24aa));

    listOfChapter.add(new Chapter(chapterName:'Chapter 7', chapterQuestions:'Questions 70', color1:0xff512da8, color2:0xfff3e5f5));

    listOfChapter.add(new Chapter(chapterName:'Chapter 8', chapterQuestions:'Questions 80', color1:0xffc2185b, color2:0xff8e24aa));


    return listOfChapter;

  }







}







