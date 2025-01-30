import threading  # For creating threads
import time  # For measuring performance and sleep simulation

# Define a function that simulates some work by sleeping for a specified number of seconds
def func(seconds):
    print(f"Sleeping for {seconds} seconds")
    time.sleep(seconds)  # Simulate a blocking task
    print(f"Finished sleeping for {seconds} seconds")
    return seconds

# Main function to demonstrate sequential and multithreaded execution
def main():
    # Sequential execution
    print("Starting sequential execution")
    time1 = time.perf_counter()  # Start time measurement for sequential execution
    
    func(4)
    func(3)
    func(1)
    
    time2 = time.perf_counter()  # End time measurement for sequential execution
    print(f"Sequential execution took {time2 - time1:.2f} seconds\n")
    
    # Multithreaded execution
    print("Starting multithreaded execution")
    time3 = time.perf_counter()  # Start time measurement for multithreaded execution
    
    # Create threads
    t1 = threading.Thread(target=func, args=[4])
    t2 = threading.Thread(target=func, args=[3])
    t3 = threading.Thread(target=func, args=[1])
    
    # Start threads
    t1.start()
    t2.start()
    t3.start()
    
    # Wait for all threads to complete
    t1.join()
    t2.join()
    t3.join()
    
    time4 = time.perf_counter()  # End time measurement for multithreaded execution
    print(f"Multithreaded execution took {time4 - time3:.2f} seconds")

# Check if this script is being run directly
if __name__ == "__main__":
    main()
