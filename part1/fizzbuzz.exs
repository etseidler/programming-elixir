fizzy = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Buzz"
  (_, _, a) -> a
end

buzzy = fn 
  n -> fizzy.(rem(n, 3), rem(n, 5), n)
end

IO.puts buzzy.(10)
IO.puts buzzy.(11)
IO.puts buzzy.(12)
IO.puts buzzy.(13)
IO.puts buzzy.(14)
IO.puts buzzy.(15)
IO.puts buzzy.(16)
