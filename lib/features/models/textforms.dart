

import 'package:flutter/cupertino.dart';

class TextFormsModel{
  TextEditingController nameControl = TextEditingController();
  TextEditingController bannerControl = TextEditingController();
  TextEditingController sinceControl = TextEditingController();

  TextFormsModel(this.nameControl, this.bannerControl, this.sinceControl);

  clearForms(){
    nameControl.clear();
    bannerControl.clear();
    sinceControl.clear();
  }
}