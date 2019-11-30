# Ipsedixit

Lexical training creator for readers with some problem in memorizing words and in reading long text.

Creates single word exercises (choosing from a dictionary).
A dictionary is a list of words in a language. 
Before to be usable, a given dictionary has to be checked using DictClean dictionary processor.
How it works: 
Given a text, creates a complete and read exercise with missing letters to write in place.
Uses a databse to store data (postgresql).


# Ipsedixit compile
In VisualStudio add Postgres support loading Npgsql package giving this command in nuget console (Tools _ Nuget Package Manager _ Package Manager Console : > dotnet add package Npgsql --version 4.1.2
more references at https://www.nuget.org/packages/Npgsql/ .

If "nuget package manager" is missing in your VisualStudio, add it from the exstension manager (Extensions_Manage Extensions_ Choose Online trhen search for nuget).
