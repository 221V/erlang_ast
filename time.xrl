%% leex file structure

Definitions.

L = [a-zA-Z]


Rules.

[0-9]+ : {token, {integer, TokenLine, list_to_integer(TokenChars)}}.

: : {token, {time_separator, TokenLine}}.

am|AM|a\.m\.|A\.M\. : {token, {meridian_specifier, TokenLine, am}}.

pm|PM|p\.m\.|P\.M\. : {token, {meridian_specifier, TokenLine, pm}}.

[\s\t]+ : skip_token.

[a-zA-Z]+ : skip_token.

[.]+ : {error, syntax}.

{L}+ : skip_token.


Erlang code.

