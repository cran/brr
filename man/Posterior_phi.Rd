% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/posteriors.R
\name{Posterior_phi}
\alias{Posterior_phi}
\alias{dpost_VE}
\alias{dpost_phi}
\alias{ppost_VE}
\alias{ppost_phi}
\alias{qpost_VE}
\alias{qpost_phi}
\alias{rpost_phi}
\alias{spost_phi}
\title{Posterior distribution on the relative risk and the vaccine efficacy}
\usage{
dpost_phi(phi, a, b, c, d, S, T, x, y, ...)

dpost_VE(VE, a, b, c, d, S, T, x, y, ...)

ppost_phi(q, a, b, c, d, S, T, x, y, ...)

ppost_VE(q, a, b, c, d, S, T, x, y, ...)

qpost_phi(p, a, b, c, d, S, T, x, y, ...)

qpost_VE(p, a, b, c, d, S, T, x, y, ...)

rpost_phi(n, a, b, c, d, S, T, x, y)

spost_phi(a, b, c, d, S, T, x, y, ...)
}
\arguments{
\item{phi,VE,q}{vector of quantiles}

\item{a,b}{non-negative shape parameter and rate parameter of the prior Gamma distribution on the control incidence rate}

\item{c,d}{non-negative shape parameters of the prior distribution on the relative risk}

\item{S,T}{sample sizes in control group and treated group}

\item{x,y}{counts in the treated group and control group}

\item{...}{other arguments passed to \code{\link{Beta2Dist}}}

\item{p}{vector of probabilities}

\item{n}{number of observations to be simulated}
}
\value{
\code{dpost_phi} gives the density, \code{ppost_phi} the distribution function, \code{qpost_phi} the quantile function,
\code{rpost_phi} samples from the distribution, and \code{spost_phi}
gives a summary of the distribution.
}
\description{
Density, distribution function, quantile function and random
generation for the posterior distribution on relative risk or the vaccine efficacy.












}
\details{
The prior distribution on the relative risk \eqn{\phi} is the Beta2 distribution
with shape parameters \eqn{c} and \eqn{d} and scale parameter \eqn{(T+b)/S}.
}
\note{
\code{Posterior_phi} is a generic name for the functions documented.
}
\examples{
a <- 2; b <- 2; c <- 3; d <- 4; S <- 1; T <- 1; x <- 2; y <- 6
spost_phi(a, b, c, d, S, T, x, y, output="pandoc")
require(magrittr)
phi <- seq(0, 6, length.out=100)
phi \%>\% { plot(., dpost_phi(., a, b, c, d, S, T, x, y), type="l") }
phi \%>\% { lines(., dprior_phi(., b, c, d, S, T),  col="red") }
}

