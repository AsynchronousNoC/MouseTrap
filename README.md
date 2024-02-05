# MouseTrap
To obtain vivado project run command "vivado -source rebuild.tcl"

keep the project repository not checked in github, and don't include files when adding them from sources to the project
for more information on how to manage version control refer to "https://github.com/jhallen/vivado_setup"


# Scipt Informations
To obtain a working mousetrap pipeline there are steps to make:

## preliminary step
### ImpS
+ this script will instantiate 3 p-blocks, and ask vivado to optimize the closure time paths. after the implementation the script will extract information on the cell positions from the pipeline stage in the middle, this way every other time that a mousetrap is implemented it will be implemented in the same exact way.
+ prerequisites : the Top has to be a module with 3 pipeline stages, the 3 p-blocks dimension has to be changed manually (usually the more square-like the better)

## Flow steps:

### maxPerformance
+ this script will create a constraint file where all the critical path will have a set_max_delay at 0
+ prerequisites: a finished synthesis of the project
### functionalPerformance
+ this script will create a constraint file where the bundle constraint is applied on the request connections, the data connections are fixed in position, the data overrun contraint is applied on the aknowledgment connections, and a set_max_delay (previous_delay) is applied on the closure path
+ prerequisites: a finished implementation after the maxPerformance script is run



