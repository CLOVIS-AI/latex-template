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

## Indexes: entry & mainentry

Creates an entry in the index.

    \entry{word}              % Simple entry
    \entry{word!word}         % Sub-entry
    \entry{word!word!word}    % Sub-sub-entry
    \entry{SORT@word}         % Sort as SORT instead of word, eg. \entry{fx@$f(x)$} will sort as fx and display f(x) in math mode

You can also use `\mainentry` with the same parameters, it will bold the page number (use it to point to the definition).

The command `cprintindex` replaces `printindex`.

## Glossary

The command `cprintglossaries` replaces `printglossaries`.

### glossaryentry

Creates a new glossary entry.

    \glossaryentry{ID}{DISPLAY SINGULAR}{DISPLAY PLURAL}{DESCRIPTION}

### newacronym

Creates a new acronym.

    \newacronym{ID}{SHORT FORM}{LONG FORM}

### newdualentry

Creates both an acronym AND a normal glossary entry.

    \newdualentry{ID}{SHORT FORM}{LONG FORM}{DESCRIPTION}

### Displaying

The next commands can be used to display the acronyms & entries.

    \gls{ID}       % Print the entry or an acronym
    \Gls{ID}       % Print the entry or an acronym with an uppercase at the first word
    \glspl{ID}     % Print the entry's plural form
    \Glspl{ID}     % Print the entry's plural form with an uppercase first letter
    \glslink{ID}{TEXT} % Print TEXT but link to ID
    \glsdesc{ID}   % Print the description
    \acrlong{ID}   % Print the long version of an acronym
    \acrshort{ID}  % Print the short version of an acronym

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

# Maths

## Sets

    \setN  % A relative integer
    \setR  % A real
    \setZ  % A positive integer
    \setI  % An imaginary number
    \setC  % Reals and imaginary numbers
    \setQ  % Quotients (fractions)
    \set{LETTER HERE} % Any other character in the set font

You can add a `p` at the end of some set commands to mean 'only positive', a `s` (for star) to mean 'non-null' and `ps` to mean both.
The three options work for the general command.

## Set operations

    \union
    \inter

## Greek letters that are not defined

    \Alpha % Uppercase alpha: A
    \Khi   % Uppercase khi: X

## Probabilities

    \parmi{p}{n}  % p parmi n
    \arrang{p}{n} % A^p_n (notation française)
    \suit         % Pour les variables aléatoires: X ~> Z

## Others

    \infinity % Same as \infty but more readable

## UML diagrams

### Class diagrams

    \begin{tikzpicture}
        ...
    \end{tikzpicture}

Inside, you can create your classes, etc.

    \begin{class}{NAME OF THE CLASS}{COORDINATES:eg.:0,0}
        ...
    \end{class}

You can also use `abstractclass` and `interface`.

Inside a class, you can use:

    \attribute{...} % An attribute
    \operation{...} % An operation/method

You can put an abstract operation with:

    \operation[0]{...}

Inheriting from a class is as simple as:

    \begin{class}{Parent}{0,0}
        ...
    \end{class}
    \begin{class}{Child}{0,-5}
        \inherit{Parent}
    \end{class}

In the same way, you can implement an interface, by using:

    \implement{Parent}

You can use associations:

    \begin{class}{First}{0,0}...\end{class}
    \begin{class}{Second}{0,-5}...\end{class}
    \association{First}{NAME}{MULTIPLICITY}{Second}{NAME}{MULTIPLICITY}
    \unidirectionalAssociation{First}{NAME}{MULTIPLICITY}{Second}
    \aggregation{First}{NAME}{MULTIPLICITY}{Second}
    \composition{First}{NAME}{MULTIPLICITY}{Second}
