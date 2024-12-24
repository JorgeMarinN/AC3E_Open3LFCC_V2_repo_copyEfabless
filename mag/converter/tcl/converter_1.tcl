	
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Core layout			#
#   01-11-2022        	#
# #####################	#

#tech load /home/jovyan/conda-env/share/pdk/sky130A/libs.tech/magic/sky130A.tech
set n_cell 32
set p_cell 48
set size 5.5
set guard_offset_x 11.25
set guard_width 48
set LS1 [expr {(($n_cell - 1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($p_cell - 1)*$size + 3*($guard_offset_x + $guard_width) - 5) - 16}]
set LS2 [expr {(($n_cell - 1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($p_cell - 1)*$size + 1*($guard_offset_x + $guard_width) - 5)}]
set LS3 [expr {(($n_cell - 1)*$size + 3*($guard_offset_x + $guard_width) - 5) - 32}]
set LS4 [expr {(($n_cell - 1)*$size + 1*($guard_offset_x + $guard_width) - 5) - 10}]
set VDD [expr {(($n_cell - 1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($p_cell - 1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - ($guard_offset_x + $guard_width)}]

set ypos [expr {($p_cell - 1)*$size + 2*($guard_offset_x + $guard_width) - 5} + 2.01]
set yoff [expr {$ypos + 29.49}]

see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
see no locali
see no viali
see no m2contact
see no m3contact
see no metal3
see no via3
see no metal5
see no via4
see no mimcap
see no mimcap2

drc style drc(full)

# Converter
box 0um 0 10um 10um
getcell converter_1/power_stage_1.mag
expand toggle
clockwise 90
upsidedown

proc add_obsactive_box_margin { device margin } {
    select cell $device
    box grow center $margin
    paint obsactive
}

proc remove_obsactive_from_device { device } {
    select cell $device
    select area obsactive
    delete
}

proc add_obsactive_layer_to_converter {} {
    tech unlock obsactive
    select cell power_stage_1_0/nmos_waffle_32x32_1
    set obsactive_margin [expr [lindex [box size] 0] / 3.0]

    add_obsactive_box_margin power_stage_1_0/nmos_waffle_32x32_0 ${obsactive_margin}i
    add_obsactive_box_margin power_stage_1_0/nmos_waffle_32x32_1 ${obsactive_margin}i
    add_obsactive_box_margin power_stage_1_0/pmos_waffle_48x48_0 ${obsactive_margin}i
    add_obsactive_box_margin power_stage_1_0/pmos_waffle_48x48_1 ${obsactive_margin}i

    remove_obsactive_from_device power_stage_1_0/nmos_waffle_32x32_0
    remove_obsactive_from_device power_stage_1_0/nmos_waffle_32x32_1
    remove_obsactive_from_device power_stage_1_0/pmos_waffle_48x48_0
    remove_obsactive_from_device power_stage_1_0/pmos_waffle_48x48_1

    remove_obsactive_from_device level_shifter_0
    remove_obsactive_from_device level_shifter_1
    remove_obsactive_from_device level_shifter_2
    remove_obsactive_from_device level_shifter_3
}

# VH
box 10um [expr {$yoff}]um [expr {$LS1 + 80}]um [expr {$yoff + 3}]um
paint metal1
box [expr {$LS1 +14}]um [expr {$yoff}]um [expr {$LS1 + 80}]um [expr {$yoff + 3}]um
label VLS east metal1

# VDD
box 10um [expr {$yoff + 3.5}]um [expr {$VDD + 80}]um [expr {$yoff + 6}]um
paint metal1
box [expr {$VDD +14}]um [expr {$yoff + 3.5}]um [expr {$VDD + 80}]um [expr {$yoff + 6}]um
label VDD west metal1
box [expr {$VDD + 50}]um [expr {$ypos + 0.99}]um [expr {$VDD + 55}]um [expr {$yoff + 6}]um
paint metal2
box [expr {$VDD + 50.05}]um [expr {$ypos + 1.04}]um [expr {$VDD + 54.95}]um [expr {$ypos + 5.94}]um
paint m3contact
box [expr {$VDD + 50}]um [expr {$ypos - 64.01}]um [expr {$VDD + 55}]um [expr {$ypos + 5.99}]um
paint metal3

# GND
box 10um [expr {$yoff + 12.5}]um [expr {$LS1 + 80}]um [expr {$yoff + 15.5}]um
paint metal1
#box 10.05um [expr {$yoff + 12.55}]um [expr {$LS1 +15.95}]um [expr {$yoff + 15.45}]um
#paint m2contact
box 25um [expr {$ypos + 0.99}]um 30um [expr {$yoff + 15.5}]um
paint metal2
box 25.05um [expr {$ypos + 1.04}]um 29.95um [expr {$ypos + 5.94}]um
paint m3contact
box 25um [expr {$ypos - 64.01}]um 30um [expr {$ypos + 5.99}]um
paint metal3


# LS1
box [expr {$LS1}]um [expr {$ypos}]um [expr {$LS1}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
select area obsactive
delete
box [expr {$LS1 + 20.47}]um [expr {$ypos - 55}]um [expr {$LS1 + 23.47}]um [expr {$ypos + 0.5}]um
paint {metal2 metal3 metal4 metal5}
box [expr {$LS1 + 20.62}]um [expr {$ypos - 33.85}]um [expr {$LS1 + 23.32}]um [expr {$ypos - 30.15}]um
paint {m3contact via3 via4}
box [expr {$LS1 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS1 + 21.3}]um [expr {$yoff + 15.5}]um
paint metal2
box [expr {$LS1 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS1 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS1 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS1 + 16.35}]um [expr {$yoff + 6}]um
paint metal2
box [expr {$LS1 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS1 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS1 + 15.97}]um [expr {$yoff + 3.55}]um [expr {$LS1 + 16.3}]um [expr {$yoff + 5.95}]um
paint m2contact
box [expr {$LS1 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS1 + 18.5}]um [expr {$yoff + 7.5}]um
paint metal2
box [expr {$LS1 + 17.5}]um [expr {$yoff + 6.5}]um [expr {$LS1 + 80}]um [expr {$yoff + 7.5}]um
paint metal1
box [expr {$LS1 + 17.55}]um [expr {$yoff + 6.55}]um [expr {$LS1 + 18.45}]um [expr {$yoff + 7.45}]um
paint m2contact
box [expr {$LS1 + 79}]um [expr {$yoff + 6.5}]um [expr {$LS1 + 80}]um [expr {$yoff + 7.5}]um
label D1 west metal1

# LS2
box [expr {$LS2}]um [expr {$ypos}]um [expr {$LS2}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
select area obsactive
delete
box [expr {$LS2 + 20.47}]um [expr {$ypos - 40}]um [expr {$LS2 + 23.47}]um [expr {$ypos + 0.5}]um
paint {metal2 metal3 metal4 metal5}
box [expr {$LS2 + 20.62}]um [expr {$ypos - 33.85}]um [expr {$LS2 + 23.32}]um [expr {$ypos - 30.15}]um
paint {m3contact via3 via4}
box [expr {$LS2 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS2 + 21.3}]um [expr {$yoff + 15.5}]um
paint metal2
box [expr {$LS2 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS2 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS2 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS2 + 16.35}]um [expr {$yoff + 6}]um
paint metal2
box [expr {$LS2 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS2 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS2 + 15.97}]um [expr {$yoff + 3.55}]um [expr {$LS2 + 16.3}]um [expr {$yoff + 5.95}]um
paint m2contact
box [expr {$LS2 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS2 + 18.5}]um [expr {$yoff + 9}]um
paint metal2
box [expr {$LS2 + 17.5}]um [expr {$yoff + 8}]um [expr {$LS1 + 80}]um [expr {$yoff + 9}]um
paint metal1
box [expr {$LS2 + 17.55}]um [expr {$yoff + 8.05}]um [expr {$LS2 + 18.45}]um [expr {$yoff + 8.95}]um
paint m2contact
box [expr {$LS1 + 79}]um [expr {$yoff + 8}]um [expr {$LS1 + 80}]um [expr {$yoff + 9}]um
label D2 west metal1

# LS3
box [expr {$LS3}]um [expr {$ypos}]um [expr {$LS3}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
select area obsactive
delete
box [expr {$LS3 + 20.47}]um [expr {$ypos - 40}]um [expr {$LS3 + 23.47}]um [expr {$ypos + 0.5}]um
paint {metal2 metal3 metal4 metal5}
box [expr {$LS3 + 20.62}]um [expr {$ypos - 33.85}]um [expr {$LS3 + 23.32}]um [expr {$ypos - 30.15}]um
paint {m3contact via3 via4}
box [expr {$LS3 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS3 + 21.3}]um [expr {$yoff + 15.5}]um
paint metal2
box [expr {$LS3 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS3 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS3 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS3 + 16.35}]um [expr {$yoff + 6}]um
paint metal2
box [expr {$LS3 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS3 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS3 + 15.97}]um [expr {$yoff + 3.55}]um [expr {$LS3 + 16.3}]um [expr {$yoff + 5.95}]um
paint m2contact
box [expr {$LS3 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS3 + 18.5}]um [expr {$yoff + 10.5}]um
paint metal2
box [expr {$LS3 + 17.5}]um [expr {$yoff + 9.5}]um [expr {$LS1 + 80}]um [expr {$yoff + 10.5}]um
paint metal1
box [expr {$LS3 + 17.55}]um [expr {$yoff + 9.55}]um [expr {$LS3 + 18.45}]um [expr {$yoff + 10.45}]um
paint m2contact
box [expr {$LS1 + 79}]um [expr {$yoff + 9.5}]um [expr {$LS1 + 80}]um [expr {$yoff + 10.5}]um
label D3 west metal1

# LS4
box [expr {$LS4}]um [expr {$ypos}]um [expr {$LS4}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
select area obsactive
delete
box [expr {$LS4 + 20.47}]um [expr {$ypos - 55}]um [expr {$LS4 + 23.47}]um [expr {$ypos + 0.5}]um
paint {metal2 metal3 metal4 metal5}
box [expr {$LS4 + 20.62}]um [expr {$ypos - 33.85}]um [expr {$LS4 + 23.32}]um [expr {$ypos - 30.15}]um
paint {m3contact via3 via4}
box [expr {$LS4 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS4 + 21.3}]um [expr {$yoff + 15.5}]um
paint metal2
box [expr {$LS4 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS4 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS4 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS4 + 16.35}]um [expr {$yoff + 6}]um
paint metal2
box [expr {$LS4 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS4 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS4 + 15.97}]um [expr {$yoff + 3.55}]um [expr {$LS4 + 16.3}]um [expr {$yoff + 5.95}]um
paint m2contact
box [expr {$LS4 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS4 + 18.5}]um [expr {$yoff + 12}]um
paint metal2
box [expr {$LS4 + 17.5}]um [expr {$yoff + 11}]um [expr {$LS1 + 80}]um [expr {$yoff + 12}]um
paint metal1
box [expr {$LS4 + 17.55}]um [expr {$yoff + 11.05}]um [expr {$LS4 + 18.45}]um [expr {$yoff + 11.95}]um
paint m2contact
box [expr {$LS1 + 79}]um [expr {$yoff + 11}]um [expr {$LS1 + 80}]um [expr {$yoff + 12}]um
label D4 west metal1

view
add_obsactive_layer_to_converter
save converter_1.mag

if {0} {
extract all
ext2spice lvs
ext2spice
}
