# Exercism practice

## Local test running

With `entr` tool installed can autorun each assignment's test file with each change to the assignments files:

`ls *.rb | entr -r ruby <path/to/test>.rb`

Explanation of entr command

- list all files in the current directory ending in `.rb`
- pipe the list to the `entr` executable
- executable will watch for saved changes in that list of files and then run the command:
  - `ruby <path/to/test>.rb`
  - this command feeds the given file to the ruby interpreter to read and execute
