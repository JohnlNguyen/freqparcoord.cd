\name{interactivedraw}
\alias{interactivedraw}

\title{
Draw parallel coordinates on an interactive plotly plot.
}

\description{
Takes the output of partialNA, which has the rightmost column denoting
frequency of each tuple, and draws an interactive parallel coordinates plot.
These plots are useful in that you can drag columns to investigate further
relationships and also select a segment on a vertical axis to selectively
view patterns.
}

\usage{
interactivedraw(partial)
}

\arguments{
    \item{partial}{
        The dataset after processing from partialNA().
    }
}

\author{
Norm Matloff <matloff@cs.ucdavis.edu>, Harrison Nguyen <hhnguy@ucdavis.edu>, and Vincent Yang <vinyang@ucdavis.edu>
}

\examples{
    # Drawing an interactive parallel coordinates plot without categorical variables
    file <- system.file("data", "smallexample.csv", package="freqparcoord.cd")
    dataset <- read.table(file, header=TRUE, sep=";", na.strings="")
    partial <- partialNA(dataset)
    interactivedraw(partial)

    # Drawing an interactive parallel coordinates plot with categorical variable 
    file <- system.file("data", "categoricalexample.csv", package="freqparcoord.cd")
    dataset <- read.table(file, header=TRUE, sep=";", na.strings="")
    partial <- partialNA(dataset)
    interactivedraw(partial)
}