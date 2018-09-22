# latex-template
My latex templates

# Commands provided by this package

## hrefu

Displays an underlined hyperlink.

    \hrefu{URL}{TEXT TO DISPLAY}

## mintinline

Format inline code.

    \mintintline{LANGUAGE}{CODE HERE}

See the [documentation](http://ctan.tetaneutral.net/macros/latex/contrib/minted/minted.pdf) of the package `minted` for more information.

## References

### cref

Formats a reference of the form: `§SEC ''NAME'' PAGE` where `SEC` is the section number, `NAME` is the name of the ref, and `PAGE` is its location using varioref (so it can display `on the next page`) or similar.

    \cref{LABEL}

You can override the `NAME` field of the command, the hyperlink will still work.

    \cref[NAME]{LABEL}

### cf

Displays the reference in a similar fashion than \cref, but in parenthesis with the `cf.` prefix.

    \cf{LABEL}
    \cf[NAME]{LABEL}

### cnref

Only displays the `NAME` field (see \cref), with the hyperlink to the ref.

    \cnref{LABEL}
    \cnref[NAME]{LABEL}

### cnpref

Displays the `NAME` and `PAGE` fields (see \cref), with the hyperlink.

    \cnpref{LABEL}
    \cnpref[NAME]{LABEL}

# Environnements provided by this package

## cquote

Displays a quote with the author's name.

    \begin{cquote}{AUTHOR HERE}
      TEXT HERE
    \end{cquote}

## minted

Displays formatted code.

    \begin{minted}{LANGUAGE HERE}
      CODE HERE
    \end{minted}

See the [documentation](http://ctan.tetaneutral.net/macros/latex/contrib/minted/minted.pdf) of the package `minted` for more information.
