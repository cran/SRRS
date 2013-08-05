\name{SRRS}
\alias{SRRS}
\title{ The Stepwise Response Refinement Screener (SRRS) }
\description{A graphical user interface (GUI) program for the SRRS method. SRRS is a model selection method for analyzing supersaturated designs and factorial designs with consideration of 2-factor interactions.}
\usage{SRRS()}
\details{
The code \code{SRRS()} opens an input panal for the users to load their data files and enter their parameters. Here are some instructions:

1. Users need to prepare for two text files (in \code{.txt} or \code{.dat}): a design matrix file and a response file. Users load the design matrix and response files by clicking the top and bottom "Open File" buttons respectively. If either files or both contain headers, users need to click the corresponding checkboxes on the right of the "Open File" buttons. The header names must be in the first row of the text files. Incorrect indications of header checkboxes may lead to incorrect analysis results, or even crash the program.

2. Users can adjust the number of main effects by entering a number in the first textbox. If there are $n$ columns in the design matrix file, users may enter any integers from $1, \dots, n$. If users leave the value unchanged (i.e. $0$), or users enter any numbers $<0$ or $>n$, the program automatically sets the number of main effects to be $n$. In addition, if users enter a number with decimal points, e.g. $4.5$, the program automatically remove the decimal points, i.e. $n=4$.

3. Users can adjust the threshold Gamma of their own by entering a number in the second textbox. If users leave the value unchanged (i.e. $0$) or enter any numbers $<0$, the program automatically sets the threshold Gamma to be $1/10$ of the absolute magnitude of the first potential important effect. Users with no prior information are suggested to leave it unchanged.

4. If users believe in the existence of significant two-factor interaction effects, they need to click the checkbox to the right of "2-Factor Interactions?". Then the program will perform model selection with the consideration of two-factor interactions under effect heredity principle.

5. Users need to choose their required model selection criterion. There are two choices, mAIC and AIC, in current version. AIC is the traditional criterion for model selection, but it may overfit the model when the sample is small. mAIC, first proposed in Phoa, Pan and Xu (2009), works well in the analysis of supersaturated designs. The difference between two criteria is on the penalty terms, which is linear penalty to AIC criterion but quadratic penalty to mAIC criterion.
}
\value{After all information are filled in, a click of RUN button starts the analysis of data via the SRRS method. It returns a result panal with ranks, important effects and values of criterion of five suggested models, as well as the value of threshold gamma.
}
\references{
1. Phoa, F.K.H. (2013). "The Stepwise Response Refinement Screener (SRRS)." accepted by \emph{Statistica Sinica}.

2. Phoa, F.K.H. (2013). SRRS: An R Package for the Analysis of Factorial and Supersaturated Designs. submitted.
}
\author{Frederick Kin Hing Phoa <fredphoa@stat.sinica.edu.tw>}

\seealso{
\code{\link{SRRS-package}}
}

\examples{
SRRS() # This opens the input panal
}
