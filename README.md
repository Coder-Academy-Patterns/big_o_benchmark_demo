# Big-O Benchmark Demo

* Purpose: Demonstrate how to compare the time efficiency of a method that is O(n) versus its equivalent in O(n^2) in Interactive Ruby

* Setup
  * Approach 1: IRB
    * Run IRB `irb`
    * Copy/paste code from big_o_benchmark_demo.rb into IRB and press Enter to show how long it took to run each of the two methods
  * Install Ruby
  * Run the benchmark program
    ```
    ruby big_o_benchmark_demo.rb
    ```

* STEP 1:
  * Situation: 
    * Given hash where keys are names and values are whether the name is a student or a teacher

    * Goal: 
      * Create a method with Big-O time efficiency of O(n) that when given arguments including the hash, returns a list of the names that are students (not teachers)
      * Create a method with Big-O time efficiency of O(n^2) that returns the same list (containing only list of student names)
      * Compare the time efficiency using the Ruby in-built Benchmark
    
    Note: Code for STEP 1 is shown below

* STEP 2:
  * CHALLENGE for students is to pair up, where each pair thinks of an example Ruby method they can implement in O(1), O(n), and O(n^2), individually push the code to Github in a max 30 mins
  * Optional: Using Ruby Benchmark Module, to compare the speed (time efficiency) of their solutions!
    * Reference: http://ruby-doc.org/stdlib-2.4.2/libdoc/benchmark/rdoc/Benchmark.html