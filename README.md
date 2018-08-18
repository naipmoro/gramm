## gramm

An Antlr4-based Metamath proof verifier. Antlr4 creates a parser from the
supplied grammar, [MM.g4], and provides facilities for walking the generated
parse tree(s).

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
30674 of 30674 proofs were verified
time: 16.16 sec
```
## License

* Original source code is distributed under the [MIT License].

* The source code for `MMBailErrorStrategy.java` is taken verbatim from Terence
Parr's _The Definitive ANTLR 4 Reference_. See that file's [source code] for
copyright details and restrictions.

* All the metamath files in the `test/resources` directory are in the public
domain, with the exception of `peano-fixed.mm`, which is distributed under the
[GPL License]. See each file for details.

[MM.g4]: ./src/main/antlr4/naipmoro/gramm/MM.g4
[MIT License]: ./LICENSE
[source code]: ./src/main/java/naipmoro/gramm/MMBailErrorStrategy.java
[GPL License]: https://opensource.org/licenses/gpl-license
