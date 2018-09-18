## Gramm

Gramm is an Antlr4-based Metamath proof verifier. From the supplied Metamath
grammar ([MM.g4]), Antlr4 creates a lexer and a parser and provides support
code for walking the generated parse trees.

## Maven build

After cloning the project, navigate to its root and run:
```console
$ mvn package
```
The executable `gramm-x.y.z.jar` will be created in the `target` directory
(you can ignore the second created jar, `original-gramm-x.y.z.jar`). If you
prefer to run tests prior to building the jar, run:
```console
$ mvn package -DskipTests=false
```

## Usage

Note: in place of `set.mm`, you can substitute any metamath database.
```console
$ java -jar -Xmx1g gramm-0.1.2.jar set.mm
reading source file set.mm ...
0 errors
0 warnings
30838 of 30838 proofs were verified
time: 9.54 sec
```

## License

* Gramm is distributed under the [MIT License].

* Although Gramm does not bundle any third party libraries, it depends on the
Antlr4 runtime, and the executable jar (if you choose to build it) will contain
Antlr class files. Antlr4 is distributed under the [BSD 3-Clause License].

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
