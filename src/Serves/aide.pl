/*
****************************************************************************************************************
*= = 项目名称: The Tips is coming from WhisPy Project.
*= = 运行环境: Please load this file into Insight Prolog.
*= = 编码人员: Carlyon W. Tung
*= = 编码时间: 2018-06-09 07:03:00
****************************************************************************************************************
*/

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

:- http_handler(root(.), aide_say_hi, []).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

aide_say_hi(_Request) :-
    format('Content-type: text/plain~n~n'),
    format('Welcome, I am Pytalk!~n~n').

:- server(52615).


/*
****************************************************************************************************************
*= = End of File
****************************************************************************************************************
*/


