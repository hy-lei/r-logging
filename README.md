# R Logging Demo
Logging in R can be quite useful when it comes to application monitoring and analytics at scale.  This demo provides a quick guide to set up a logging framework in your R program with the library `logging`.  It is shipped with two features:
1. Hierarchical logging;
2. Directing logs to both console and a file.

## Getting Started
These instructions will tell you how to get the necessary packages, how to run this demo, and what to expect from the demo.

### Prerequisites
Check whether you have the R package `logging` installed on your machine.  In R, run
```R
require('logging')
```
If a warning message shows up, then continue to run:
```R
install.packages('logging')
```

### Running the demo
Clone the repo to your machine.  Then run R under `src`, and enter the following:
```R
source('run.r')
```

You will get something like this in the console, and a log file under `log`:
```
2019-08-04 23:52:48 INFO:root:Starting root logger...
2019-08-04 23:52:48 WARNING:root:This is a warning.
2019-08-04 23:52:48 ERROR:root:This is an error.
2019-08-04 23:52:48 INFO:root.a:Starting program 1...
2019-08-04 23:52:48 WARNING:root.a:This is a warning.
2019-08-04 23:52:48 ERROR:root.a:This is an error.
2019-08-04 23:52:48 INFO:root.b:Starting program 2...
2019-08-04 23:52:48 WARNING:root.b:This is a warning.
2019-08-04 23:52:48 ERROR:root.b:This is an error.
```

## Miscellaneous
### Log levels in R

| Name     | Level |
|----------|-------|
| NOTSET   | 0     |
| FINEST   | 1     |
| FINER    | 4     |
| FINE     | 7     |
| DEBUG    | 10    |
| INFO     | 20    |
| WARNING  | 30    |
| WARN     | 30    |
| ERROR    | 40    |
| CRITICAL | 50    |
| FATAL    | 50    |