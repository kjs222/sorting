# Sorting Suite

This project includes sort methods for arrays using four different sorting algorithms:

* Merge Sort
* Insertion Sort
* Bubble Sort
* Selection Sort

Benchmark class provides speed of each sort type for a given arrays, and reports fastest/slowest method.

Rake file provided to run all tests using command `rake test`

#### Instantiation
The sort methods for each sort type are wrapped in a SelectionSuite module.  To instantiate a sorter for each type, do the following:

```
bubble_sorter = SortingSuite::BubbleSort.new
insertion_sorter = SortingSuite::InsertionSort.new
merge_sorter = SortingSuite::MergeSort.new
selection_sorter = SortingSuite::SelectionSort.new
benchmark = SortingSuite::Benchmark.new
```

Sort methods are then accessed as follows:

```
bubble_sorter.sort(*your array*)
insertion_sorter.sort(*your array*)
merge_sorter.sort(*your array*)
selection_sorter.sort(*your array*)
benchmark.sort(*your array*)
```

Benchmark functions test speed of each sort type.  A random test array of lengh 1000 is generated automatically for these methods, but any array can be passed in to override the randome array.

```
benchmark.time_all
benchmark.fastest
benchmark.slowest
```
