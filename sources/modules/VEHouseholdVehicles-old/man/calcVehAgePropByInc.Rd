% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AssignVehicleFeatures.R
\name{calcVehAgePropByInc}
\alias{calcVehAgePropByInc}
\title{Calculate vehicle age distributions by income group.}
\usage{
calcVehAgePropByInc(VehAgIgProp, AgeGrp, AgeMargin, IncGrp, IncMargin,
  MaxIter = 100, Closure = 0.001)
}
\arguments{
\item{VehAgIgProp}{A numeric vector of joint probabilities of vehicle by
age and income group.}

\item{AgeGrp}{A numeric vector indicating the vehicle ages.}

\item{AgeMargin}{A named numeric vector indicating the marginal distribution
of vehicle by age.}

\item{IncGrp}{A character vector indicating the income groups.}

\item{IncMargin}{A named numeric vecotr indicating the marginal distribution
of vehicle by income groups.}

\item{MaxIter}{A numeric indicating maximum number of iterations. (Default: 100)}

\item{Closure}{A numeric indicating the tolerance level for conversion. (Default: 1e-3)}
}
\value{
A numeric vector of joint probabilities of vehicle by age and income group.
}
\description{
\code{calcVehAgePropByInc} Calculates vehicle age distributions by
household income group.
}
\details{
This function calculates vehicle age distributions by household income group.
It takes marginal distributions of vehicles by age and households by income
group along with a data frame of the joint probability distribution of
vehicles by age and income group, and then uses iterative proportional
fitting to adjust the joint probabilities to match the margins. The
probabilities by income group are calculated from the fitted joint
probability matrix. The age margin is the proportional distribution of
vehicles by age calculated by adjusting the cumulative age distribution
for autos or light trucks to match a target mean age. The income
margin is the proportional distribution of vehicles by household income group
($0-20K, $20K-40K, $40K-60K, $60K-80K, $80K-100K, $100K or more) calculated
from the modeled household values.
}
