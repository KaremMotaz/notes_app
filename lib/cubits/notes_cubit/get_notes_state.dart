part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitialState extends GetNotesState {}

final class GetNoteLoadedState extends GetNotesState {}



