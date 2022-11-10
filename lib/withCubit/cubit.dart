import 'package:flutter_bloc/flutter_bloc.dart';

class ImageCubit extends Cubit<String> {
  ImageCubit() : super("Add");

  void showImage(String show) {
    emit(show);
  }

  void hideImage(String hide) {
    emit(hide);
  }
}
