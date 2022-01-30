struct CircularQueue<T: Hashable> {
    
    class Node<T: Hashable> {
        var val: T
        var next: Node? = nil
        init(val: T) {
            self.val = val
        }
    }

    private var head: Node<T>?
    private var tail: Node<T>?
    
    init(size: Int, startValue: T) {
        for _ in 0..<size{
            put(value: startValue)
        }
    }
    
    mutating func put(value: T) {
        if head == nil {
            head = Node<T>(val: value)
        }else if tail == nil {
            tail = Node<T>(val: value)
            head?.next = tail
            tail?.next = head
        }else {
            let secondRef = Node<T>(val: value)
            let thirdRef = head?.next
            head?.next = secondRef
            secondRef.next = thirdRef
        }
    }
    
    func get() -> T? {
        if tail?.next != nil {
            if let element = head?.next {
                head?.next = element.next
                let val = element.val
                head?.next = nil
                head?.next = element.next
                
                return val
            }
        }
        return nil
    }
    
    func clear() {
        head?.next = nil
        tail?.next = nil
    }
}
