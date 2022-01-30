# SwiftRingBuffer
RingBuffer aka Circular Queue
https://media.geeksforgeeks.org/wp-content/uploads/Circular-queue_1.png

Ussage

```
var queue = CircularQueue<Int>(size: 2, startValue: 1)
queue.put(value: 2)
queue.put(value: 3)


var val = queue.get()
repeat {
    print(val ?? nil)
    val = queue.get()
} while(val != nil)

queue.put(value: 5)
repeat {
    print(val)
    val = queue.get()
} while(val != nil)
```

//output
```
Optional(3)
Optional(2)
Optional(1)
Optional(1)
nil
Optional(5)
```
