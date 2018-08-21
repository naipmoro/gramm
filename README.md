## Gramm

Gramm is an Antlr4-based Metamath proof verifier. Antlr4 creates a parser and
lexer from the supplied grammar ([MM.g4]) and provides support code for walking
the generated parse tree(s).

## Maven build

After cloning the project, navigate to its root and run:
```console
$ mvn package
```
The executable `gramm.jar` will be created in the `/target` directory.

## Usage

Note: in place of `set.mm`, you can substitute any metamath database.
```console
$ java -jar -Xmx1g gramm.jar set.mm
reading the database...
***************
0 errors
0 warnings
30786 of 30786 proofs were verified
time: 14.95 sec
```
## License

* Gramm is distributed under the [MIT License].

* The source code for `MMBailErrorStrategy.java` is taken verbatim from Terence
Parr's _The Definitive ANTLR 4 Reference_. See that file's [source code] for
the author's copyright notice and usage restrictions.

* Although Gramm does not bundle any third party libraries, it depends on the
Antlr4 runtime, and the `gramm.jar` executable (if you choose to build it) will
contain Antlr class files. Antlr4 is distributed under the [BSD 3-Clause
License].

* The metamath files in the `test/resources` directory are in the public domain
or available under the [CC0 1.0 Universal License], with the exception of
`peano-fixed.mm`, which is distributed under the [GPL License]. See each file
for full details. Many of these files were copied from David Wheeler's github
project: <https://github.com/david-a-wheeler/metamath-test>.

[MM.g4]: ./src/main/antlr4/naipmoro/gramm/MM.g4
[MIT License]: ./LICENSE
[source code]: ./src/main/java/naipmoro/gramm/MMBailErrorStrategy.java
[BSD 3-Clause License]: https://github.com/antlr/antlr4/blob/master/LICENSE.txt
[CC0 1.0 Universal License]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[GPL License]: https://opensource.org/licenses/gpl-license
