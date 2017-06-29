# NAME

Code::TidyAll::Plugin::YAPF - Code::TidyAll plugin to tidy Python code via yapf

[![Build Status](https://travis-ci.org/oalders/code-tidyall-plugin-yapf.png?branch=master)](https://travis-ci.org/oalders/code-tidyall-plugin-yapf)

# VERSION

version 0.000001

# SYNOPSIS

This module requires [Code::TidyAll](https://metacpan.org/pod/Code::TidyAll).

    In the .tidyallrc configuration file add:

    [YAPF]
    select = static/**/*.py

Then run

    tidyall -a

# DESCRIPTION

Runs `yapf` on Python files.

- argv

    Arguments to pass to `yapf`.

- cmd

    Full path to `yapf`.

# ACKNOWLEDGEMENTS

Much of this code was copied from [Code::TidyAll::Plugin::JSBeautifier](https://metacpan.org/pod/Code::TidyAll::Plugin::JSBeautifier)

# AUTHOR

Olaf Alders <olaf@wundercounter.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Olaf Alders.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# POD ERRORS

Hey! **The above document had some coding errors, which are explained below:**

- Around line 30:

    '=item' outside of any '=over'
