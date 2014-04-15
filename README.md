sc_perceptron
=============

A simple implementation of a single node perceptron in Erlang.  May extend to more later.



Current Library Status: *Usable toy*
------------------------------------

This is barely a thing, really.  Single node perceptrons are trivial.  This is much intended to be a code example as anything.

But, it works, and it's correct.



Usage
=====

For detailed usage see the docs that I probably haven't written yet.

Perceptrons are simple aggregators: given a series of inputs, qualified each by one weight and one datum, sum the products of the weight/data pairs.  If at-or-over a given threshhold, emit 1; otherwise, 0.

This is the basis of one simple kind of feed-forward neural network.



Example
-------

For example, consider a perceptron with a threshhold of five, and weights of [6,2,2], given a series of different input sets.

```erlang
1> c("sc_perceptron/src/sc_perceptron.erl").
{ok,sc_perceptron}

2> sc_perceptron:result(5, [6,2,2], [1,1,1]).
1

3> sc_perceptron:result(5, [6,2,2], [0,1,1]).
0

4> sc_perceptron:result(5, [6,2,2], [1,0,0]).
1
```

[This may help](http://neuralnetworksanddeeplearning.com/chap1.html) in interpreting these results.



Polemic :neckbeard:
===================

`sc_perceptron` is MIT licensed, because viral licenses and newspeak language modification are evil.  Free is ***only*** free when it's free for everyone.
