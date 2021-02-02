set ports [get_selected_objects ]

set port_0 [lindex $ports 0]
set port_1 [lindex $ports 1]

set port_0_rename [string map {/ _} $port_0]
set port_1_rename [string map {/ _} $port_1]

set net_name "${port_0_rename}_TO_${port_1_rename}"
create_net "$net_name"

connect_net -hierarchical -net "$net_name" -objects [list $port_0 $port_1]