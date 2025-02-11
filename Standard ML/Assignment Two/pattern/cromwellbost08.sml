fun smap(_, nil) = nil
  |smap(F, x :: xs) = F x :: smap(F, xs);

fun insea(a, nil) = [[a]]
  |insea(a, b::bs) = (a::b::bs) :: smap(fn x => b::x, insea(a, bs));