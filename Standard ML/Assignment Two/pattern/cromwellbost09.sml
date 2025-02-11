fun smap(_, nil) = nil
  |smap(F, x :: xs) = F x :: smap(F, xs);

fun ins(a, nil) = [[a]]
  |ins(a, b::bs) = (a::b::bs) :: smap(fn x => b::x, ins(a, bs));

fun cat(nil, L2) = L2
  |cat(x::xs, L2) = x::cat(xs, L2);

fun smap2(_,nil) = nil
  |smap2(F, x :: xs) = cat(F x, smap2(F, xs));

fun permu(1) = [[1]]
  | permu(n) = smap2(fn y => ins(n, y), permu(n-1));