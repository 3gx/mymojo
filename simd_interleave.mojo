fn interleave(v1: SIMD, v2: SIMD[v1.type, v1.size]) -> SIMD[v1.type, v1.size*2]:
    var result = SIMD[v1.type, v1.size*2]()
    for i in range(v1.size):
        result[i*2] = SIMD[v1.type, 1](v1[i])
        result[i*2+1] = v2[i]
    return result

def main():
  let a = SIMD[DType.int16, 4](1, 2, 3, 4)
  let b = SIMD[DType.int16, 4](6, 7, 8, 9)
  let c = interleave(a, b)
  for i in range(c.size):
      print_no_newline(c[i], " ")
