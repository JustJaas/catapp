import 'package:bloc/bloc.dart';
import 'package:catapp/data/entities/cat_model.dart';
import 'package:catapp/domain/services/api_service.dart';
import 'package:equatable/equatable.dart';

part 'cat_event.dart';
part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  CatBloc() : super(const CatState(
      isLoading: false,
      firstLoad: true,
      isError: false,
      cats: [])) {
    on<OnFirstLoadEvent>((event, emit) async{
        try {
        emit(state.copyWith(isLoading: true, isError: false, firstLoad: true));

        List cats = await ApiService().getCats();
        List<Cat> newCats = cats.map((json) => Cat.fromJson(json)).toList();
        print(newCats);
        emit(state.copyWith(cats: newCats, isLoading: false, firstLoad: false));
      } catch (e) {
        print(e);
        emit(state.copyWith(isError: true, firstLoad: false));
      }
    });
  }
}
