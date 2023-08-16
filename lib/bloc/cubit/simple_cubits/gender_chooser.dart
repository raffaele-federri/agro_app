// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';


class GenderChooser extends Cubit<int?> {
  GenderChooser() : super(null);


  void changeTab(int newTab) {
    emit(newTab);
  }
}