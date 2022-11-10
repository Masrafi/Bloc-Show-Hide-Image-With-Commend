import 'package:flutter_bloc/flutter_bloc.dart';

import 'image_event.dart';
import 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageAddState()) {
    on<ImageAddEvent>((event, emit) {
      if (event.textAdd == "Add") {
        emit(ImageAddState());
      }
      if (event.textAdd == "Remove") {
        emit(ImageRemoveSate());
      }
    });
  }
}
