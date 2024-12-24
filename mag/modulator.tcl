
# #####################	#
#   AC3E - UTFSM      	#
#   Project:    		#
#   Modulator Routing	#
#   04-11-2023        	#
# #####################	#

set mod_x 1058.965
set mod_y 2807.515

# Supply
set xspace 32.315
set yspace 31.960
set yoff [expr {$mod_y + 151.155}]
for {set i 0} {$i < 4} {incr i} {
    #box  [expr {$mod_x +($xspace*$i)+20.875}]um [expr {$mod_y}]um [expr {$mod_x +($xspace*$i)+22.475}]um [expr {$mod_y+12}]um 
    #paint {metal4}
    #box  [expr {$mod_x +($xspace*$i)+24.175}]um [expr {$mod_y}]um [expr {$mod_x +($xspace*$i)+25.775}]um [expr {$mod_y+12}]um 
    #paint {metal4}
    #box  [expr {$mod_x +($xspace*$i)+20.875}]um [expr {$yoff}]um [expr {$mod_x +($xspace*$i)+22.475}]um [expr {$yoff-12.5}]um 
    #paint {metal4}
    #box  [expr {$mod_x +($xspace*$i)+24.175}]um [expr {$yoff}]um [expr {$mod_x +($xspace*$i)+25.775}]um [expr {$yoff-12.5}]um 
    #paint {metal4}
    box  [expr {$mod_x-3}]um [expr {$mod_y +($yspace*$i)+26.06}]um [expr {$mod_x+5.5}]um [expr {$mod_y +($yspace*$i)+27.66}]um 
    paint metal5
    box  [expr {$mod_x-2.8}]um [expr {$mod_y +($yspace*$i)+26.26}]um [expr {$mod_x-0.2}]um [expr {$mod_y +($yspace*$i)+27.46}]um 
    paint via4
    box  [expr {$mod_x-8}]um [expr {$mod_y +($yspace*$i)+29.36}]um [expr {$mod_x+5.5}]um [expr {$mod_y +($yspace*$i)+30.96}]um 
    paint metal5
    box  [expr {$mod_x-7.8}]um [expr {$mod_y +($yspace*$i)+29.56}]um [expr {$mod_x-5.2}]um [expr {$mod_y +($yspace*$i)+30.76}]um 
    paint via4
	
}
box  [expr {$mod_x-3}]um [expr {$mod_y + 26.06}]um [expr {$mod_x}]um 2990um 
paint metal4
box  [expr {$mod_x-2.8}]um 2987.2um [expr {$mod_x-0.2}]um 2989.8um 
paint via3
box  10um 2987um [expr {$mod_x}]um 2990um 
paint metal3
box  10.2um 2987.2um 12.8um 2989.8um 
paint via3 
box  10um 2987um 13um 3244um 
paint metal4
box  10.2um 3169.2um 12.8um 3243.8um 
paint via3
box  1um 3169um 13um 3244um 
paint metal3
box  [expr {$mod_x-8}]um [expr {$mod_y + 29.36}]um [expr {$mod_x-5}]um 2980um 
paint metal4
box  [expr {$mod_x-7.8}]um 2977.2um [expr {$mod_x-5.2}]um 2979.8um 
paint via3
box  710um 2977um [expr {$mod_x-5}]um 2980um 
paint metal3
box  710.2um 2977.2um 719.8um 2979.8um 
paint {via3, via4}
box  710um 2977um 720um 2980um 
paint metal4


# pines del lado izquierdo
set pin_d2_2 2540.17
set pin_d2_3 2324.09
set pin_d2_4 2107.98
set pin_d2_5 1891.84
set pin_d1_0 1675.76
set pin_d1_1 1459.62
set pin_d1_2 1244.54
set pin_d1_3 606.42
set pin_d1_4 390.25
set pin_d1_5 174.17
set pin_RST 67.11
set pin_CLK_SR 43.45
set pin_CLK_EXT 19.79

# pines del lado derecho
set pin_d2_1 2044.48
set pin_d2_0 1812.37
set pin_Data_SR 1586.27
set pin_SIGNAL_OUTPUT 1370.06

drc style drc(full)

if {0} {
see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no pcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
see no mvntransistor
see no polysilicon
see no locali
see no viali
see no metal1
see no m2contact
see no m3contact
see no via3
see no via4
see no mimcap
see no mimcap2
see no mimcapcontact
see no mimcap2contact
}

#load user_analog_project_wrapper_empty.mag -force
# box 0um 0um 10 10
# getcell modulator_mask.mag
for {set i 0} {$i < 13} {incr i} {
    box  [expr ($i*3)+20]um 0um [expr ($i*3)+22]um [expr ($i*10.88)+ ($mod_y+9.56+1)]um 
    paint {metal4}
    if {$i>0} {
    box  [expr ($i*3)+20.1]um [expr ($i*10.88)+ ($mod_y+9.56-0.9)]um [expr ($i*3)+21.9]um [expr ($i*10.88)+ ($mod_y+9.56+0.9)]um
    paint {via3}
    } else { 
        box  20.1um [expr ($mod_y+9.56-0.9)]um 21.9um [expr ($mod_y+9.56+0.9)]um
        paint {via3}
    }
    box  20um [expr ($i*10.88)+ ($mod_y+9.56-1)]um [expr {$mod_x+2}]um [expr ($i*10.88)+ ($mod_y+9.56+1)]um
    paint {metal3}
}



for {set i 0} {$i < 4} {incr i} {
    box  [expr ($i*3)+2840]um 1340um [expr ($i*3)+2842]um [expr ($i*36.72)+ ($mod_y+19.08+1)]um 
    paint {metal4}
    box  [expr ($mod_x + 139)]um [expr ($i*36.72)+ ($mod_y+19.08-1)]um 2860um [expr ($i*36.72)+ ($mod_y+19.08+1)]um
    paint {metal3}
    box  [expr ($i*3)+2840.1]um [expr ($i*36.72)+ ($mod_y+19.08-0.9)]um [expr ($i*3)+2841.9]um [expr ($i*36.72)+ ($mod_y+19.08+0.9)]um
    paint {via3}
}

	
# pines de la izquierda
box  0um [expr ($pin_d2_2)-1]um [expr (0*3)+22]um [expr ($pin_d2_2) + 1]um
paint {metal3}
box [expr (0*3)+20.1]um [expr $pin_d2_2-0.9]um [expr (0*3)+21.9]um [expr $pin_d2_2+0.9]um
paint {via3}

box  0um [expr ($pin_d2_3)-1]um [expr (1*3)+22]um [expr ($pin_d2_3) + 1]um
paint {metal3}
box [expr (1*3)+20.1]um [expr $pin_d2_3-0.9]um [expr (1*3)+21.9]um [expr $pin_d2_3+0.9]um
paint {via3}

box  0um [expr ($pin_d2_4)-1]um [expr (2*3)+22]um [expr ($pin_d2_4) + 1]um
paint {metal3}
box [expr (2*3)+20.1]um [expr $pin_d2_4-0.9]um [expr (2*3)+21.9]um [expr $pin_d2_4+0.9]um
paint {via3}

box  0um [expr ($pin_d2_5)-1]um [expr (3*3)+22]um [expr ($pin_d2_5) + 1]um
paint {metal3}
box [expr (3*3)+20.1]um [expr $pin_d2_5-0.9]um [expr (3*3)+21.9]um [expr $pin_d2_5+0.9]um
paint {via3}

box  0um [expr ($pin_d1_0)-1]um [expr (4*3)+22]um [expr ($pin_d1_0) + 1]um
paint {metal3}
box [expr (4*3)+20.1]um [expr $pin_d1_0-0.9]um [expr (4*3)+21.9]um [expr $pin_d1_0+0.9]um
paint {via3}

box  0um [expr ($pin_d1_1)-1]um [expr (5*3)+22]um [expr ($pin_d1_1) + 1]um
paint {metal3}
box [expr (5*3)+20.1]um [expr $pin_d1_1-0.9]um [expr (5*3)+21.9]um [expr $pin_d1_1+0.9]um
paint {via3}

box  0um [expr ($pin_d1_2)-1]um [expr (6*3)+22]um [expr ($pin_d1_2) + 1]um
paint {metal3}
box [expr (6*3)+20.1]um [expr $pin_d1_2-0.9]um [expr (6*3)+21.9]um [expr $pin_d1_2+0.9]um
paint {via3}

box  0um [expr ($pin_d1_3)-1]um [expr (7*3)+22]um [expr ($pin_d1_3) + 1]um
paint {metal3}
box [expr (7*3)+20.1]um [expr $pin_d1_3-0.9]um [expr (7*3)+21.9]um [expr $pin_d1_3+0.9]um
paint {via3}

box  0um [expr ($pin_d1_4)-1]um [expr (8*3)+22]um [expr ($pin_d1_4) + 1]um
paint {metal3}
box [expr (8*3)+20.1]um [expr $pin_d1_4-0.9]um [expr (8*3)+21.9]um [expr $pin_d1_4+0.9]um
paint {via3}

box  0um [expr ($pin_d1_5)-1]um [expr (9*3)+22]um [expr ($pin_d1_5) + 1]um
paint {metal3}
box [expr (9*3)+20.1]um [expr $pin_d1_5-0.9]um [expr (9*3)+21.9]um [expr $pin_d1_5+0.9]um
paint {via3}

box  0um [expr ($pin_RST)-1]um [expr (10*3)+22]um [expr ($pin_RST) + 1]um
paint {metal3}
box [expr (10*3)+20.1]um [expr $pin_RST-0.9]um [expr (10*3)+21.9]um [expr $pin_RST+0.9]um
paint {via3}

box  0um [expr ($pin_CLK_SR)-1]um [expr (11*3)+22]um [expr ($pin_CLK_SR) + 1]um
paint {metal3}
box [expr (11*3)+20.1]um [expr $pin_CLK_SR-0.9]um [expr (11*3)+21.9]um [expr $pin_CLK_SR+0.9]um
paint {via3}

box  0um [expr ($pin_CLK_EXT)-1]um [expr (12*3)+22]um [expr ($pin_CLK_EXT) + 1]um
paint {metal3}
box [expr (12*3)+20.1]um [expr $pin_CLK_EXT-0.9]um [expr (12*3)+21.9]um [expr $pin_CLK_EXT+0.9]um
paint {via3}



# pines de la derecha
box  [expr (0*3)+2840]um [expr ($pin_d2_1)-1]um 2920um [expr ($pin_d2_1) + 1]um
paint {metal3}
box  [expr (0*3)+2840.1]um [expr $pin_d2_1-0.9]um [expr (0*3)+2841.9]um [expr $pin_d2_1+0.9]um
paint {via3}

box  [expr (1*3)+2840]um [expr ($pin_d2_0)-1]um 2920um [expr ($pin_d2_0) + 1]um
paint {metal3}
box  [expr (1*3)+2840.1]um [expr $pin_d2_0-0.9]um [expr (1*3)+2841.9]um [expr $pin_d2_0+0.9]um
paint {via3}

box  [expr (2*3)+2840]um [expr ($pin_Data_SR)-1]um 2920um [expr ($pin_Data_SR) + 1]um
paint {metal3}
box  [expr (2*3)+2840.1]um [expr $pin_Data_SR-0.9]um [expr (2*3)+2841.9]um [expr $pin_Data_SR+0.9]um
paint {via3}

box  [expr (3*3)+2840]um [expr ($pin_SIGNAL_OUTPUT)-1]um 2920um [expr ($pin_SIGNAL_OUTPUT) + 1]um
paint {metal3}
box  [expr (3*3)+2840.1]um [expr $pin_SIGNAL_OUTPUT-0.9]um [expr (3*3)+2841.9]um [expr $pin_SIGNAL_OUTPUT+0.9]um
paint {via3}


#pin pll
box 1069um 2800um 1071um 2808um
paint {metal2}
box  1069.1um 2800.1um 1070.9um 2801.9um
paint {via2}
#linea horizontal arriba
box 1069um 2800um 2838um 2802um
paint {metal3}
#linea vertical izquierda
box  2836um 20um 2838um 2802um 
paint {metal4}
box  2836.1um 2800.1um 2837.9um 2801.9um
paint {via3}
#linea horizontal abajo x-izquierda y-arriba x-derecha y-abajo
box  2836.1um 20.1um 2837.9um 21.9um
paint {via3}
box 2836um 20um 2900um 22um
paint {metal3}
box  2898.1um 20.1um 2899.9um 21.9um
paint {via2}
#conexion con pin externo
box  2898um 0um 2900um 22um
paint {metal2}



#box 1058.965um 2807.515um 1100um 2810um
#getcell Modulator.mag
