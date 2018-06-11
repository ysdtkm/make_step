# make_step
Step-oriented GNU Makefile for reproducible data analysis.

## Usage
```bash
make
```

## Motivation
When doing scientific data analysis,
1. We execute mutually dependent analysis processes,
2. We re-execute each process through trial and error. Scientists check the output figures, edit source files, and re-execute necessary processes, and
3. Many files/data are passed between processes. These files are often renamed/added/removed.
With these characteristics, we often forget to execute some necessary processes and we fail to reproduce results.

Only considering points 1 and 2, we imagine that we can write a simple Makefile with explicit dependencies
between files and processes to solve this problem (as in Reference 1).
However, due to point 3, this straightforward approach will fail because we need to include
comprehensive dependencies to the Makefile and update it frequently, which we will soon neglect.

Therefore, I propose a Makefile that uses dependency between processes instead of dependency between files. This Makefile checks the timestamp of each source files and execute necessary processes only.

## Another post
* https://qiita.com/1007/items/b875c186cbdbc9846386

## References
1. http://zmjones.com/make/
