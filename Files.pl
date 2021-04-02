write_to_file(File, Txt):-
    open(File, write, Stream),
    write(Stream, Txt), nl,
    close(Stream).
read_file(File):-
    open(File, read, Stream),
    get_char(Stream, Char1),
    process_stream(Char1, Stream),
    close(Stream).
process_stream(end_of_file, _):- !.
process_stream(Char, Stream):-
    write(Char),
    get_char(Stream, Char2),
    process_stream(Char2, Stream).