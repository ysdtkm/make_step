# make_step
Step-oriented GNU Makefile for reproducible data analysis

## Usage
```bash
make
```

## Motivation
Scientific data analysis often
1. Execute mutually dependent analysis processes,
2. Re-execute each process through trial and error. Scientists check the output figures and re-execute necessary processes, and
3. Many files/data are passed between processes.

Only considering points 1 and 2, we imagine that we can write a simple Makefile with explicit dependencies
between files and processes to solve this problem.
However, due to point 3, this approach will fail because we need to include
comprehensive dependencies to the Makefile and update it frequently.

Therefore, I propose a Makefile that uses dependency between processes instead of dependency between files. This Makefile uses a hidden directory .make to log the last execute time of each process.

## Another post
* https://qiita.com/1007/items/b875c186cbdbc9846386

## References
* http://zmjones.com/make/
