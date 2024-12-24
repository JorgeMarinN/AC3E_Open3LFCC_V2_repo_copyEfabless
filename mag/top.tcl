	
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC v2  	#
#   Topmodule Layout	#
#   04-11-2023        	#
# #####################	#

drc style drc(full)

grid 0.5um

box 0 0 0 0
load user_analog_project_wrapper_empty
cellname rename user_analog_project_wrapper_empty user_analog_project_wrapper
expand toggle

variable harness_top 3520
variable harness_right "undefined"

variable pin_bottom 3511.5
variable pin_size [list 25.0 12.5]

proc lvs_extract { } {
    extract
    ext2spice lvs
    ext2spice short resistor
}

proc short_supply_pin { pin_1_position pin_2_position } {
    set wire_width 25
    set wire_position_y [expr [lindex $pin_1_position 1] - $wire_width / 2.0]
    lappend wire [expr [lindex $pin_1_position 0] - [lindex $::pin_size 0] / 2.0]um ${wire_position_y}um
    lappend wire [expr [lindex $pin_2_position 0] + [lindex $::pin_size 0] / 2.0]um ${wire_position_y}um
    eval "wire segment m3 ${wire_width}um $wire -noendcap"
    eval "wire segment m4 ${wire_width}um $wire -noendcap"
    lappend pin_junction [expr ([lindex $pin_1_position 0] + [lindex $pin_2_position 0]) / 2.0]um [expr [lindex $pin_1_position 1] - $wire_width]um
    box [expr {[lindex $pin_1_position 0] + $wire_width/2}]um [lindex $pin_1_position 1]um [expr {[lindex $pin_2_position 0] - $wire_width/2}]um [expr {[lindex $pin_2_position 1] - $wire_width/2}]um
    select area "m4 m3"
    delete
    return $pin_junction
}

variable io_analog_2 [list 2339.47 $pin_bottom]
variable io_analog_3 [list 2079.47 $pin_bottom]
variable io_analog_4_a [list 1658.94 $pin_bottom]
variable io_analog_4_b [list 1607.47 $pin_bottom]
variable io_analog_4 [short_supply_pin $io_analog_4_b $io_analog_4_a]
variable io_analog_5_a [list 1150.47 $pin_bottom]
variable io_analog_5_b [list 1098.97 $pin_bottom]
variable io_analog_5 [short_supply_pin $io_analog_5_b $io_analog_5_a]
variable io_analog_6_a [list 891.97 $pin_bottom]
variable io_analog_6_b [list 840.47 $pin_bottom]
variable io_analog_6 [short_supply_pin $io_analog_6_b $io_analog_6_a]
variable io_analog_7 [list 613.47 $pin_bottom]
variable io_analog_8 [list 353.47 $pin_bottom]
variable io_analog_9 [list 93.47 $pin_bottom]

variable converter_1_size [list 1517.33 561.33]
variable converter_2_size [list 1011.33 374.33]
variable converter_3_size [list 796.000 632.000]
variable modulator_size [list 140.435 151.155]
variable converter_1_position [list 600 [expr {$harness_top - [lindex $converter_1_size 1] - 0}]]
variable modulator_position [list [expr {[lindex $converter_1_position 0] + ([lindex $converter_1_size 0 ] - [lindex $modulator_size 0]) / 3.0}] [expr {[lindex $converter_1_position 1] - [lindex $modulator_size 1]}]]
variable converter_2_position [list [expr {[lindex $converter_1_position 0] + ([lindex $converter_1_size 0 ] - [lindex $converter_2_size 0]) / 2.0}] [expr {$harness_top - [lindex $converter_1_size 1] - [lindex $converter_2_size 1] - [lindex $modulator_size 1]}]]
variable converter_3_position [list [expr {[lindex $converter_2_position 0] + ([lindex $converter_2_size 0 ] - [lindex $converter_3_size 0]) / 2.0}] [expr {[lindex $converter_2_position 1] - [lindex $converter_3_size 1]}]]

set segment_width_1 2.5
set segment_width_2 1
set pin_separation 0.5

variable converter_1_pin_vss_top [list 715 3280]
variable converter_1_pin_vss_bot [list 710 3075]
variable converter_1_pin_vdd_top [list 2000 3350]
variable converter_1_pin_vdd_bot [list 2000 3070]
variable converter_1_pin_out_top [list 1260 3270]
variable converter_1_pin_out_bot [list 1280 3075]
variable converter_1_pin_fc2_top [list 975 3315]
variable converter_1_pin_fc2_bot [list 975 3225]
variable converter_1_pin_fc1_top [list 1600 3400]
variable converter_1_pin_fc1_bot [list 1645 3225]
variable converter_1_pin_vls [list [expr [lindex $converter_1_position 0] + 105] [expr {[lindex $converter_1_position 1] + 62}]]

variable converter_1_pin_d1_orig [list [expr {[lindex $converter_1_position 0] + 1096.415}] [expr {[lindex $converter_1_position 1] + 56.165}]]
variable converter_1_pin_d2_orig [list [expr {[lindex $converter_1_position 0] + 1157.915}] [expr {[lindex $converter_1_pin_d1_orig 1] - 1.5}]]
variable converter_1_pin_d3_orig [list [expr {[lindex $converter_1_position 0] + 1157.915}] [expr {[lindex $converter_1_pin_d1_orig 1] - 1.5 * 2}]]
variable converter_1_pin_d4_orig [list [expr {[lindex $converter_1_position 0] + 365.915}] [expr {[lindex $converter_1_pin_d1_orig 1] - 1.5 * 3}]]

variable converter_1_pin_d2 [list [expr {[lindex $converter_1_pin_d2_orig 0] + 1.5 * 2}] [expr {[lindex $converter_1_pin_d2_orig 1] - 1.5}]]
variable converter_1_pin_d4 [list 700.5 3006.5]
variable converter_1_pin_d1 [list [expr {[lindex $converter_1_pin_d4 0] - 1.5}] [expr {[lindex $converter_1_pin_d4 1] - 1.5}]]
variable converter_1_pin_d3 [list [expr {[lindex $converter_1_pin_d3_orig 0] + 1.5}] [expr {[lindex $converter_1_pin_d3_orig 1] - 1.5}]]

variable converter_2_pin_vss_top [list [expr {[lindex $converter_2_position 0] + 72}] [expr {[lindex $converter_2_position 1] + 239.815}]]
variable converter_2_pin_fc2_top [list [expr {[lindex $converter_2_position 0] + 250.5}] [expr {[lindex $converter_2_position 1] + 279.815}]]
variable converter_2_pin_out_top [list [expr {[lindex $converter_2_position 0] + 420}] [expr {[lindex $converter_2_position 1] + 235}]]
variable converter_2_pin_fc1_top [list [expr {[lindex $converter_2_position 0] + 792}] [expr {[lindex $converter_2_position 1] + 279.815}]]
variable converter_2_pin_vdd_top [list [expr {[lindex $converter_2_position 0] + 937.5}] [expr {[lindex $converter_2_position 1] + 239.815}]]
variable converter_2_pin_vls [list [expr [lindex $converter_2_position 0] + 85] [expr {[lindex $converter_2_position 1] + 345.665}]]

variable converter_2_pin_d1_orig [list [expr {[lindex $converter_2_position 0] + 887.915}] [expr {[lindex $converter_2_position 1] + 351.165}]]
variable converter_2_pin_d2_orig [list [expr {[lindex $converter_2_position 0] + 478.415}] [expr {[lindex $converter_2_pin_d1_orig 1] + 1.5}]]
variable converter_2_pin_d3_orig [list [expr {[lindex $converter_2_position 0] + 385.915}] [expr {[lindex $converter_2_pin_d1_orig 1] + 1.5 * 2}]]
variable converter_2_pin_d4_orig [list [expr {[lindex $converter_2_position 0] + 118.415}] [expr {[lindex $converter_2_pin_d1_orig 1] + 1.5 * 3}]]

variable converter_2_pin_d2 [list [expr {[lindex $converter_2_pin_d2_orig 0] + 1.5 * 2}] [expr {[lindex $converter_2_pin_d2_orig 1] + 1.5}]]
variable converter_2_pin_d1 [list [expr {[lindex $converter_2_position 0] + 76.5}] [expr {[lindex $converter_2_position 1] + 886.915}]]
variable converter_2_pin_d4 [list [expr {[lindex $converter_2_pin_d1 0] - 1.5}] [expr {[lindex $converter_2_position 1] + 457.815}]]
variable converter_2_pin_d3 [list [expr {[lindex $converter_2_pin_d3_orig 0] + 1.5}] [expr {[lindex $converter_2_position 1] + 384.915}]]

variable modulator_pin_d22 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86}]]
variable modulator_pin_d23 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 2}]]
variable modulator_pin_d24 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 3}]]
variable modulator_pin_d25 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 4}]]
variable modulator_pin_d10 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 5}]]
variable modulator_pin_d11 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 6}]]
variable modulator_pin_d12 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 7}]]
variable modulator_pin_d13 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 8}]]
variable modulator_pin_d14 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 9}]]
variable modulator_pin_d15 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 10}]]
variable modulator_pin_rst [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 11}]]
variable modulator_pin_clk [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 12}]]
variable modulator_pin_clkext [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + 9.86 * 13}]]

# TODO: replace 0 for size
variable modulator_pin_d21 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0}]]
variable modulator_pin_d21 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0 * 2}]]
variable modulator_pin_d21 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0 * 3}]]
variable modulator_pin_d20 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0 * 4}]]
variable modulator_pin_datasr [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0 * 5}]]
variable modulator_pin_sigout [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + 0 * 6}]]

variable modulator_pin_height 4.5

variable modulator_pin_pmos1_ps1_orig [list [expr {[lindex $modulator_position 0] + 17.25}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] - $modulator_pin_height}]]
variable modulator_pin_nmos2_ps1_orig [list [expr {[lindex $modulator_position 0] + 52.21}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] - $modulator_pin_height}]]
variable modulator_pin_pmos2_ps1_orig [list [expr {[lindex $modulator_position 0] + 87.17}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] - $modulator_pin_height}]]
variable modulator_pin_nmos1_ps1_orig [list [expr {[lindex $modulator_position 0] + 122.13}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] - $modulator_pin_height}]]

variable modulator_pin_pmos1_ps2_orig [list [expr {[lindex $modulator_position 0] + 30.22}] [expr {[lindex $modulator_position 1] + $modulator_pin_height}]]
variable modulator_pin_nmos2_ps2_orig [list [expr {[lindex $modulator_position 0] + 50}] [expr {[lindex $modulator_position 1] + $modulator_pin_height}]]
variable modulator_pin_pmos2_ps2_orig [list [expr {[lindex $modulator_position 0] + 69.78}] [expr {[lindex $modulator_position 1] + $modulator_pin_height}]]
variable modulator_pin_nmos1_ps2_orig [list [expr {[lindex $modulator_position 0] + 89.56}] [expr {[lindex $modulator_position 1] + $modulator_pin_height}]]

variable modulator_pin_pmos_ps3_orig [list 0 0]
variable modulator_pin_nmos_ps3_orig [list 0 0]

variable modulator_pin_pmos1_ps1 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] + 1.5}]]
variable modulator_pin_nmos2_ps1 [list [lindex $modulator_position 0] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] + 1.5 * 2}]]
variable modulator_pin_pmos2_ps1 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] + 1.5 * 2}]]
variable modulator_pin_nmos1_ps1 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_position 1] + [lindex $modulator_size 1] + 1.5}]]

variable modulator_pin_pmos1_ps2 [list [lindex $modulator_position 0] [expr {[lindex $modulator_pin_pmos1_ps2_orig 1] - 1.5 - 10 - $modulator_pin_height}]]
variable modulator_pin_nmos2_ps2 [list [lindex $modulator_position 0] [expr {[lindex $modulator_pin_nmos2_ps2_orig 1] - 1.5 * 2 - 10 - $modulator_pin_height}]]
variable modulator_pin_pmos2_ps2 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_pin_pmos2_ps2_orig 1] - 1.5 * 2 - $modulator_pin_height}]]
variable modulator_pin_nmos1_ps2 [list [expr {[lindex $modulator_position 0] + [lindex $modulator_size 0]}] [expr {[lindex $modulator_pin_nmos1_ps2_orig 1] - 1.5 - $modulator_pin_height}]]

# pin_position: list with x and y coordinates of the corresponding pin
proc pin_paint_via_m1_to_m3 { pin_position } {
    box position [expr [lindex $pin_position 0] - [lindex $::pin_size 0] / 2.0]um [lindex $pin_position 1]um
    box size [lindex $::pin_size 0]um [expr $::harness_top - $::pin_bottom]um
    paint "m2 m1"
    box shrink center 0.045um
    paint "via2 via1"
}

# Route a straight connection
proc route_s { point_1 point_2 material thickness } {
    lappend wire [lindex $point_1 0]um [lindex $point_1 1]um
    lappend wire [lindex $point_2 0]um [lindex $point_2 1]um
    eval "wire segment $material $thickness $wire -noendcap"
}

proc route_sp { point direction length material thickness } {
    set end [list 0 0]
    if { $direction == "n" } {
        set end [list [lindex $point 0] [expr {[lindex $point 1] + $length}]]
        route_s $point $end $material $thickness
    } elseif { $direction == "e" } {
        set end [list [expr {[lindex $point 0] + $length}] [lindex $point 1]]
        route_s $point $end $material $thickness
    } elseif { $direction == "w" } {
        set end [list [expr {[lindex $point 0] - $length}] [lindex $point 1]]
        route_s $point $end $material $thickness
    } elseif { $direction == "s" } {
        set end [list [lindex $point 0] [expr {[lindex $point 1] - $length}]]
        route_s $point $end $material $thickness
    }
    return $end
}

# Route an L-shaped connection
proc route_l { point_1 point_2 material thickness } {
    lappend wire [lindex $point_1 0]um [lindex $point_1 1]um
    lappend wire [lindex $point_2 0]um [lindex $point_1 1]um
    lappend wire [lindex $point_2 0]um [lindex $point_2 1]um
    eval "wire segment $material $thickness $wire -noendcap"
}

# Route an L-shaped connection with different thickness
proc route_l2 { point_1 point_2 material thickness_1 thickness_2 } {
    lappend wire_1 [lindex $point_1 0]um [lindex $point_1 1]um
    lappend wire_1 [lindex $point_2 0]um [lindex $point_1 1]um
    eval "wire segment $material $thickness_1 $wire_1 -noendcap"

    lappend wire_2 [lindex $point_2 0]um [lindex $point_1 1]um
    lappend wire_2 [lindex $point_2 0]um [lindex $point_2 1]um
    eval "wire segment $material $thickness_2 $wire_2 -noendcap"
}

# Route an L-shaped connection with starting with metal 2 and ending with metal3
proc route_lm2m3 { point_1 point_2 thickness } {
    if { [lindex $point_1 0] > [lindex $point_2 0] } {
        lappend wire_1 [expr {[lindex $point_1 0] - $thickness}]um [lindex $point_1 1]um
        lappend wire_1 [expr {[lindex $point_2 0] - $thickness/2.0}]um [lindex $point_1 1]um
    } else {
        lappend wire_1 [expr {[lindex $point_1 0] + $thickness}]um [lindex $point_1 1]um
        lappend wire_1 [expr {[lindex $point_2 0] + $thickness/2.0}]um [lindex $point_1 1]um 
    }
    eval "wire segment m1 ${thickness}um $wire_1 -noendcap"
    box [expr {[lindex $point_2 0]} - $thickness/2.0]um [expr {[lindex $point_1 1] - $thickness/2.0}]um [expr {[lindex $point_2 0] + $thickness/2.0}]um [expr {[lindex $point_1 1] + $thickness/2.0}]um
    box shrink center [expr {$thickness/10.0}]um
    paint via1

    if { [lindex $point_1 1] < [lindex $point_2 1] } {
        lappend wire_2 [lindex $point_2 0]um [expr {[lindex $point_1 1] - $thickness/2.0}]um
    } else {
        lappend wire_2 [lindex $point_2 0]um [expr {[lindex $point_1 1] + $thickness/2.0}]um
    }
    lappend wire_2 [lindex $point_2 0]um [lindex $point_2 1]um
    eval "wire segment m2 ${thickness}um $wire_2 -noendcap"
}

proc instance_modules {} {
    box [lindex $::converter_1_position 0]um [lindex $::converter_1_position 1]um [lindex $::converter_1_position 0]um [lindex $::converter_1_position 1]um
    getcell converter/converter_1.mag
    upsidedown
    expand toggle

    box [lindex $::converter_2_position 0]um [lindex $::converter_2_position 1]um [lindex $::converter_2_position 0]um [lindex $::converter_2_position 1]um
    getcell converter/converter_2.mag
    expand toggle

    box [lindex $::modulator_position 0]um [lindex $::modulator_position 1]um [lindex $::modulator_position 0]um [lindex $::modulator_position 1]um
    getcell modulator.mag

    box [lindex $::converter_3_position 0]um [lindex $::converter_3_position 1]um [lindex $::converter_3_position 0]um [lindex $::converter_3_position 1]um
    getcell converter/converter_3.mag
    expand toggle 
}

proc route_converter_1 {} {

}

proc route_modulator {} {

}

proc proj_make_gds {} {
    select cell modulator_0
    delete
    gds
}


proc fix_overlap_converter_1_d4_d2 { position } {
    box [lindex $position 0]um [lindex $position 1]um [expr {[lindex $position 0] + 1.725}]um [expr {[lindex $position 1] + 1}]um
    select area m1
    delete
    box grow e 1um
    box grow w 1um
    paint m2
    box size 0.75um 0.75um
    box position [expr {[lindex $position 0] + 1.88}]um [expr {[lindex $position 1] + 0.11}]um
    paint via1
    box position [expr {[lindex $position 0] - 0.895}]um  [expr {[lindex $position 1] + 0.11}]um
    paint via1
    box [expr {[lindex $position 0] + 0.2}]um [lindex $position 1]um [expr {[lindex $position 0] + 1.2}]um [expr {[lindex $position 1] + 1}]um
    paint m1
}

instance_modules

route_l2 $converter_1_pin_vls $io_analog_9 m1 3um [lindex $::pin_size 0]um
pin_paint_via_m1_to_m3 $io_analog_9

route_l2 $io_analog_8 $converter_1_pin_vss_top m3 [lindex $::pin_size 1]um [lindex $::pin_size 0]um
route_l $converter_1_pin_fc1_top $io_analog_4 m3 [lindex $::pin_size 0]um
route_l $converter_1_pin_fc1_top $io_analog_4 m4 [lindex $::pin_size 0]um
route_l $io_analog_5 $converter_1_pin_out_top m3 [lindex $::pin_size 0]um
route_l $io_analog_5 $converter_1_pin_out_top m4 [lindex $::pin_size 0]um
route_l $io_analog_6 $converter_1_pin_fc2_top m3 [lindex $::pin_size 0]um
route_l $io_analog_6 $converter_1_pin_fc2_top m4 [lindex $::pin_size 0]um
route_l2 $io_analog_2 $converter_1_pin_vdd_top m3 [expr $::harness_top - $::pin_bottom]um [lindex $::pin_size 0]um

route_l $converter_1_pin_out_bot $converter_2_pin_out_top m5 [lindex $::pin_size 0]um
route_l $converter_2_pin_vss_top $converter_1_pin_vss_bot m5 [lindex $::pin_size 0]um
route_l $converter_2_pin_vdd_top $converter_1_pin_vdd_bot m5 [lindex $::pin_size 0]um
route_l $converter_2_pin_fc2_top [list 1028.000 2805.500] m5 [lindex $::pin_size 0]um
route_l [list 1040.500 2805.500] $converter_1_pin_fc2_bot m5 [lindex $::pin_size 0]um
route_l $converter_2_pin_fc1_top $converter_1_pin_fc1_bot m5 [lindex $::pin_size 0]um
route_l $converter_2_pin_vls [list [expr {[lindex $converter_1_pin_vls 0] - 20}]um [lindex $converter_1_pin_vls 1]um] m1 3um

route_lm2m3 $converter_1_pin_d4_orig $modulator_pin_nmos2_ps1_orig 1
route_lm2m3 $converter_1_pin_d3_orig $modulator_pin_nmos1_ps1_orig 1
route_lm2m3 $converter_1_pin_d2_orig $modulator_pin_pmos2_ps1_orig 1
route_lm2m3 $converter_1_pin_d1_orig $modulator_pin_pmos1_ps1_orig 1

route_lm2m3 $converter_2_pin_d4_orig $modulator_pin_nmos2_ps2_orig 1
route_lm2m3 $converter_2_pin_d3_orig $modulator_pin_nmos1_ps2_orig 1
route_lm2m3 $converter_2_pin_d2_orig $modulator_pin_pmos2_ps2_orig 1
route_lm2m3 $converter_2_pin_d1_orig $modulator_pin_pmos1_ps2_orig 1

# c3d2 
route_l [list 1646.500 1982.000] [list 1678.500 2046.500] m1 1um
box position 1678.000um 2045.500um
box size 1um 1um
paint m2
box shrink center 0.1um
paint via2
box shrink center 0.1um
paint via1
route_l [list 2917.600 2266.320] [list 1678.500 2045.500] m3 1um

route_l [list 1126.500 1803.500] [list 685.000 2779.000] m1 2.5um


# c3d1   
route_lm2m3 [list 906.000 2804.500] [list 1188.135 2811.515] 1
route_s [list 907.500 2003.175] [list 907.500 2805.000] m2 0.7um
route_s [list 1099.895 2003.675] [list 907.000 2003.675] m1 0.7um

route_sp [list 1099.675 2003.175] n 2.5 m2 0.5um

box 907.255um 2003.415um 907.770um 2003.915um
paint via1

box 1099.490um  2003.460um 1099.850um 2003.920um
paint via1

route_s [list 1071.665 2002] [list 688.260 2002] m1 1um
route_s [list 688.760 2001.5] [list 688.760 3016.780] m2 1um

box 688.395um 2001.705um 689.110um 2002.365um
paint via1

box position 907.275um 2804.270um
box size 0.5um 0.5um
paint via1

route_sp [list 1361.74 2512.8] s 240 m5 25um

#vss
route_l [list 1070.610 2326.930] [list 1029.310 2574.10] m5 25um
#vdd
route_l [list 1641.090 2317.530] [list 1779.52 2514.03] m5 25um

proc converter_1_route_ls_digital_vdd { } {
    set current_point [route_sp [list 705 3017] w 17.5 m1 2.5um]
    set current_point [route_sp [list [expr {[lindex $current_point 0] + 2.5}] [lindex $current_point 1]] w 10 m2 2.5um]
    set current_point [route_sp [list [expr {[lindex $current_point 0] + 2.5}] [lindex $current_point 1]] w 680 m1 2.5um]

    box size 1.5um 1.5um
    box position 680.5um 3016um
    paint via1
    box position 688um 3016um
    paint via1

    box position 10.5um 3016.5um
    paint "via1 via2 via3"
    box position 10um 3016um
    box size 2.5um 2.5um
    paint "m1 m2 m3"
}

proc converter_1_route_guard_ring_connection { } {
    set current_point [route_sp [list 2012 3441.5] w 802.5 m2 25um]
    set current_point [route_sp [list [expr [lindex $current_point 0] + 25/2] [expr {[lindex $current_point 1] + 25/2}]] s 90.7 m3 25um]
    route_l [list 939.5  3316] [list [lindex $current_point 0] [expr {[lindex $current_point 1] + 25}]] m2 25um
    route_sp [list 702.5 3407] e 1000 m2 25um
    box size 15um 15um
    box position 1214um 3434.5um
    paint via2
    box position 1214um 3368.5um
    paint via2
    box position 1993um 3433.5um
    paint via2
    box position 707.5um 3399um
    paint via2
}

proc converter_2_route_guard_ring_connection { } {
    set current_point [route_sp [list 1802.5  2480.5] w 540 m2 25um]
    set current_point [route_sp [list [expr [lindex $current_point 0] + 25/2] [expr {[lindex $current_point 1] - 25/2}]] n 90 m3 25um]
    route_l [list 1084 2577] [list [lindex $current_point 0] [expr {[lindex $current_point 1] - 25}]] m2 25um
    route_sp [list 1786.5 2548] s 80 m3 25um
    route_sp [list 914 2513.5] e 700 m2 25um
    route_sp [list 929 2501] n 80 m3 25um

    box size 15um 15um
    box position 1268um 2473.5um
    paint via2
    box position 1267.5um 2539.5um
    paint via2
    box position 920.5um 2505um
    paint via2
    box position 1779.5um 2473um
    paint via2
}

proc fix_ls_gnd_vias { } {
#converter 1
  box size 0.5um 2.5um
  box position 930.000um 3006.500um
  paint via1

  box position 1026.500um 3006.500um
  paint via1

  box position 1596.000um 3006.500um
  paint via1

  box position 1698.500um 3006.500um
  paint via1

  box 720.000um 3007.000um 724.000um 3008.500um
  paint via1
#converter 2
  box 940.500um 2790.500um 943.500um 2792.000um
  paint via1

  box size 0.5um 2.5um
  box position 973.500um 2790.000um
  paint via1

  box position 1241.000um 2790.000um
  paint via1

  box position 1333.500um 2790.000um
  paint via1

  box position 1743.000um 2790.000um
  paint via1
}

converter_1_route_guard_ring_connection
converter_2_route_guard_ring_connection
converter_1_route_ls_digital_vdd
fix_ls_gnd_vias
#fix_overlap_converter_1_d4_d2 [list 1758.5 2961.17]
#fix_overlap_converter_1_d4_d2 [list 1924.215 2804.015]

# connect 1v8_2 to 1v8_1
route_l [list 925.000 2782.000] [list 695 3015.75] m1 2.5um

source modulator.tcl

source oeb.tcl

box 524.83um 3505.25um 528.29um 3517.75um
paint rmetal3
box 2131.94um 3507.24um 2134.98um 3515.75um
paint rmetal3

view
snap grid
save user_analog_project_wrapper.mag
