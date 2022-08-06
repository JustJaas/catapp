part of 'cat_bloc.dart';

class CatState extends Equatable {
  final bool isLoading;
  final bool firstLoad;
  final bool isError;
  final List<Cat> cats;

  const CatState({
    required this.isLoading,
    required this.firstLoad,
    required this.isError,
    required this.cats,
  });

  CatState copyWith({
    bool? isLoading,
    bool? firstLoad,
    bool? isError,
    List<Cat>? cats,
  }) {
    return CatState(
      isLoading: isLoading ?? this.isLoading,
      firstLoad: firstLoad ?? this.firstLoad,
      isError: isError ?? this.isError,
      cats: cats ?? this.cats,
    );
  }

  @override
  List<Object> get props =>
      [isLoading, firstLoad, isError, cats];
  
}