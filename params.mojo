fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg,i)

fn call_repeat():
    repeat[3]("Hello")

fn main():
    call_repeat()
