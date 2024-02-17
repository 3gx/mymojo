struct HeapArray:
    var data: Pointer[Int]
    var size: Int

    fn __init__(inout self, size: Int, val: Int):
        self.size = size
        self.data = Pointer[Int].alloc(self.size)
        for i in range(self.size):
            self.data.store(i, val)

    #fn __del__(owned self):
    #    self.data.free()

fn main():
  let arr = HeapArray(1024,4)
  arr.data[2] += 1
  # arr.size = 32
  print(arr.data[2])

