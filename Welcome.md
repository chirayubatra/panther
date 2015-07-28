# Welcome to PANTHER #
### <u>P</u>itt <u>A</u>dvanced <u>N</u>uclear <u>T</u>raining for <u>H</u>igher <u>E</u>ducation <u>R</u>eactor (Desktop Simulation System) ###


## Introduction ##
PANTHER is a Real-Time Nuclear Reactor Simulator for educational uses. It is developed with the goal of producing consistent results, but is not intended to be an engineering simulation.

It is written in MATLAB, Simulink written with a grant from the U.S. Nuclear Regulatory Commission.

## TA E-Mail ##
apacella@andrew.cmu.edu

## Class Assignments ##
Class assignments and links to subsystem pages can be found [here](ClassAssignments.md).

## Minutes ##
  * [Class Minutes from 2/7/2011](http://code.google.com/p/panther/downloads/detail?name=ClassMinutes_02_07_2011.docx&can=2&q=)

## Using The Wiki ##
  * Find help on using the wiki [here](UsingTheWiki.md).

## Notes ##
  * Fixed time step of 0.25 sec
  * Forward Euler (ode1)
  * MKS units
  * As per Scott's email - Here's a link for downloading the [steam table function XSteam for MATLAB](http://www.mathworks.com/matlabcentral/fileexchange/9817)
> > - To call the function in simulink you need to insert an "embedded MATLAB function" block. The XSteam download comes with documentation describing how to call for the appropriate information.