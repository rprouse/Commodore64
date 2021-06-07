# bas2lowercase

Most BASIC listings that you will find on the Internet or read in old
magazines are all UPPERCASE. On the Commodore 64 they appear to be
UPPERCASE but they are actually lowercase. If you attempt to tokenize
an UPPERCASE listing using `petcat`, then you will get a mangled program.

This program will convert all `*.bas` files in a given directory to lowercase.

Since you will seldom need to run this program, it is easiest to just use
`dotnet run` from this directory. For example,

```sh
dotnet run -- C:\Src\6502\Commodore64\src\basic-computer-games\
```
