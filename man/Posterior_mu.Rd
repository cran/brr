% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/posteriors.R
\name{Posterior_mu}
\alias{Posterior_mu}
\alias{dpost_mu}
\alias{rpost_mu}
\alias{spost_mu}
\title{Posterior distribution on the rate in the control group}
\usage{
dpost_mu(mu, a, b, c, d, T, x, y, ...)

rpost_mu(n, a, b, c, d, T, x, y)

spost_mu(a, b, c, d, T, x, y, ...)
}
\arguments{
\item{mu}{vector of quantiles}

\item{a,b}{non-negative shape and rate parameter of the Gamma prior distribution on \eqn{\mu}}

\item{c,d}{non-negative shape parameters of the prior distribution on \eqn{\phi}}

\item{T}{sample size in control group}

\item{x,y}{counts in the treated group and control group}

\item{...}{other arguments passed to \code{\link{GIBDist}}}

\item{n}{number of observations to be simulated}
}
\value{
\code{dpost_mu} gives the density, \code{rpost_mu} samples from the
distribution, and \code{spost_mu} gives a summary of the distribution.
}
\description{
Density and random generation for the posterior distribution on
the rate in the control group. The distribution function and the quantile function
are not available.






}
\details{
The pdf of the posterior distribution of the incidence rate \eqn{\mu} involves
the Kummer confluent hypergeometric function of the second kind.
}
\note{
\code{Posterior_mu} is a generic name for the functions documented.
}
\examples{
curve(dpost_mu(x, 2, 2, 2, 2, 10, 3, 8), from=0, to=2)
spost_mu(2, 2, 2, 2, 10, 3, 8, output="pandoc")
}

