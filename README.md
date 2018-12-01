## Gramm

Gramm is an Antlr4-based Metamath proof verifier. From the supplied Metamath
grammar ([MM.g4]), Antlr4 creates a lexer/parser pair and provides support code
for walking the generated parse trees. Here's a small branch from set.mm's
tree:  

![a small branch of set.mm][setbranch]

We walk the tree by extending an Antlr4-provided empty base listener. At
particular terminal nodes of the tree, tokens are gathered and sent to the
global scope manager for processing. The most important processing occurs via
the `proof` nodes and involves calls to the proof verifier. A bit more detail
can be found [here][javadocs].

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

Or skip the cloning and building and just [download][grammjar] the pre-built
executable.

## Usage

Note: in place of `set.mm`, you can substitute any Metamath database.
```console
$ java -jar -Xmx1g gramm-0.1.7.jar set.mm
reading source file set.mm ...
verifying source file set.mm ...
0 errors
0 warnings
31143 of 31143 proofs were verified
time: 9.91 sec
```

## License

* Gramm is distributed under the [MIT License].

* Although Gramm does not bundle any third party libraries, it depends on the
  Antlr4 runtime, and the executable jar will contain Antlr class files. Antlr4
  is distributed under the [BSD 3-Clause License].

* The Metamath files in the `test/resources` directory are in the public domain
  or available under the [CC0 1.0 Universal License], with the exception of
  `peano-fixed.mm`, which is distributed under the [GPL License]. See each file
  for full details. Many of these files were copied from David Wheeler's github
  project: <https://github.com/david-a-wheeler/metamath-test>.

[MM.g4]: ./src/main/antlr4/naipmoro/gramm/MM.g4
[setbranch]: docs/naipmoro/gramm/doc-files/setbranch.png
[javadocs]: https://naipmoro.github.io/gramm/
[grammjar]: https://github.com/naipmoro/gramm/releases/download/v0.1.7/gramm-0.1.7.jar
[MIT License]: ./LICENSE
[BSD 3-Clause License]: https://github.com/antlr/antlr4/blob/master/LICENSE.txt
[CC0 1.0 Universal License]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[GPL License]: https://opensource.org/licenses/gpl-license
