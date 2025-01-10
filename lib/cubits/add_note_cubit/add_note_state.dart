part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitialState extends AddNoteState {}

final class AddNoteLoadingState extends AddNoteState {}

final class AddNoteLoadedState extends AddNoteState {}

final class AddNoteErrorState extends AddNoteState {
  final String errorMessage;
  AddNoteErrorState({required this.errorMessage});
}
