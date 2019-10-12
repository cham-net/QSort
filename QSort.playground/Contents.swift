func qSort<T: Comparable>(_ a: [T]) -> [T] {
  guard a.count > 1 else { return a }

  let pivot = a[a.count / 2]
  let less = a.filter { $0 < pivot }
  let equal = a.filter { $0 == pivot }
  let greater = a.filter { $0 > pivot }

  return qSort(less) + equal + qSort(greater)
}

let n = 9
let list = (0 ..< n).map { _ in Int.random(in: 1 ..< 99) }
let mod3 = list.filter { $0 % 3 == 0 }

print(list)

print(qSort(mod3) + qSort(list.filter { !mod3.contains($0) } )) // применяем сортировку 
