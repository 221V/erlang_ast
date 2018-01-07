# erlang_ast
erlang AST really simple example using leex and yecc
by https://arifishaq.wordpress.com/2014/01/22/playing-with-leex-and-yeec/

```
cd erlang_ast
erl
1> leex:file(time).
{ok,"./time.erl"}
2> c(time).
{ok,time}
3> time:string("time: 10:23 A.M.").
{ok,[{time_separator,1},
     {integer,1,10},
     {time_separator,1},
     {integer,1,23},
     {meridian_specifier,1,am}],
    1}
4> yecc:file(time_parser).
{ok,"time_parser.erl"}
5> c(time_parser).
{ok,time_parser}
6> {ok, Tokens, _} = time:string("the time is 10:23 A.M.").
{ok,[{integer,1,10},
     {time_separator,1},
     {integer,1,23},
     {meridian_specifier,1,am}],
    1}
7> time_parser:parse(Tokens).
{ok,{10,23}}
```
