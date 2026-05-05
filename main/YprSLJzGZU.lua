function factorial(n)
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end
function is_prime(num)
  if num <= 1 then
    return false
  end
  for i = 2, math.sqrt(num) do
    if num % i == 0 then
      return false
    end
  end
  return true
end
function prime_factors(n)
  local factors = {}
  for i = 2, n do
    while is_prime(i) and n % i == 0 do
      table.insert(factors, i)
      n = n / i
    end
  end
  return factors
end
function fibonacci(n)
  local a, b = 0, 1
  for i = 1, n do
    a, b = b, a + b
  end
  return a
end
function gcd(a, b)
  while b ~= 0 do
    local t = b
    b = a % b
    a = t
  end
  return a
end
function lcm(a, b)
  return (a * b) / gcd(a, b)
end
function reverse_string(s)
  return s:reverse()
end
function count_words(s)
  local count = 0
  for word in s:gmatch('%S+') do
    count = count + 1
  end
  return count
end
function create_range(start, stop, step)
  local range = {}
  for i = start, stop, step do
    table.insert(range, i)
  end
  return range
end
function merge_tables(t1, t2)
  for k, v in pairs(t2) do
    t1[k] = v
  end
  return t1
end
function table_length(t)
  local count = 0
  for k in pairs(t) do
    count = count + 1
  end
  return count
end
