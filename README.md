# perl.place
Source code for the perl.pause website

## Objectives

* Create an API system that is compatible with the original metacpan/cpan website, allowing access to any existing perl source
* Add in traditional API points to allow old school ftp uploads such as pause does
* Begin creating a replacement Pause that offers the same functionality as the existing but modernised and API accessible in full
* Begin implementing the new cpan system, where modules may only be uploaded to the author space, namespaces are group controlled entites that link together Authors work
* Make sure that there are three primary interfaces, new, old and merged (default)
* * Merged will simply check for a module under the new naming system and if it does not exist, try the old system
* * Old will function as the old cpan
* * New will only allow the modern meta linked system


