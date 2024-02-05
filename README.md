# MouseTrap
To obtain vivado project run command "vivado -source rebuild.tcl"

keep the project repository not checked in github, and don't include files when adding them from sources to the project
for more information on how to manage version control refer to "https://github.com/jhallen/vivado_setup"


# Scipt Informations
To obtain a working mousetrap pipeline there are steps to make:
preliminary step
-In the first stage we have to run the script ImpS-> this script will instantiate  a 3 stage pipeline, and it will place 3 p-blocks, and ask vivado to optimize the closure time paths. after the implementation the script will extract information on the cell positions, this way every other time that a mousetrap is implemented it will be implemented in the same exact way.

Flow steps:
-Run the maxPerformance script : this script will create a constraint file where all the critical path will have a set_max_delay at 0
	prerequisites: a finished synthesis of the project
	
-Run the functionalPerformance script: this script will create a constraint file where the bundle constraint is applied on the request connections, the data connections are fixed in position, the data overrun contraint is applied on the aknowledgment connections, and a set_max_delay (previous_delay) is applied on the closure path
	prerequisites: a finished implementation after the maxPerformance script is run



