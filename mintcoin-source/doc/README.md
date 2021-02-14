Mintcoin Core
=============

Setup
---------------------
Mintcoin Core is the original Mintcoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Mintcoin transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Mintcoin Core, visit [mintcoincore.org](https://mintcoincore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Mintcoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/mintcoin-qt` (GUI) or
- `bin/mintcoind` (headless)

### Windows

Unpack the files into a directory, and then run mintcoin-qt.exe.

### macOS

Drag Mintcoin Core to your applications folder, and then run Mintcoin Core.

### Need Help?

* See the documentation at the [Mintcoin Wiki](https://en.mintcoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#mintcoin](http://webchat.freenode.net?channels=mintcoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=mintcoin).
* Ask for help on the [MintcoinTalk](https://mintcointalk.org/) forums, in the [Technical Support board](https://mintcointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Mintcoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Mintcoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/mintcoin/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [MintcoinTalk](https://mintcointalk.org/) forums, in the [Development & Technical Discussion board](https://mintcointalk.org/index.php?board=6.0).
* Discuss project-specific development on #mintcoin-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=mintcoin-core-dev).
* Discuss general Mintcoin development on #mintcoin-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=mintcoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
