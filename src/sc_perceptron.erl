
-module(sc_perceptron).





-export([
    result/3
]).





result(Threshhold, Weights, Data) ->

    case Threshhold < lists:sum([ Weight * Datum || {Weight,Datum} <- lists:zip(Weights, Data) ]) of
        true -> 1;
        _    -> 0
    end.