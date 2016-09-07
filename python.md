

#### pylint
    pylint --generate-rcfile > .pylintrc               # Generate a pylint rc file

##### pdb
    import pdb; pdb.set_trace()                         # Adds a breakpoint

##### On the pdb command line
    (pdb)>  pp dir(object)                              # Pretty print an object

##### Profiling
    python -m cProfile -s -o output.out slow.py         # Write output of profiler to binary file (not so useful)
    python -m cProfile -s calls slow.py > output.txt    # Write output of profiler to text file, sort by calls
    pycallgraph graphviz -- ./<filename>                # Generate image of call graph, must have graphviz installed
