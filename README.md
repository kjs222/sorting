# Sorting Suite

This project includes sort methods for arrays using three different sorting algorithms:

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
