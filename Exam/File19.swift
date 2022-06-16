import Foundation

// ##########################################################################
// Grand Central Dispatch - GCD (Swift Threads)

print("is Main Thread 1 : \(Thread.current)")

self.performSelector (inBackground: #selector(funcThat needs TorunInBack), with: nil)

let queue = DispatchQueue(label: "com.sample.queue",qos: utility)

queue.async {
    print("my Queue \(Thread.current)")
}

func buttonAction(){
    print("button clicked")
}

func funcThat needs TorunInBack(){
    Thread.sleep(forTime Interval: 5)

    print("is Main Thread 2: \(Thread.current)")

    self.performSelector (onMainThread: #selector(runOnMainThread), with: nil, waitUntilDone: false)
}

func runOnMainThread() {

}
