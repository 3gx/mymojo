from collections.vector import DynamicVector

def main():
    var vector = DynamicVector[Int]()
    vector.append(3)
    vector.append(6)
    vector.append(9)
    for i in range(len(vector)):
        print_no_newline(vector[i], " ")
    print()
