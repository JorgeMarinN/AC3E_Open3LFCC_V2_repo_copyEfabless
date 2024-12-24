
# #####################	#
#   AC3E - UTFSM      	#
#   Project:    		#
#   EOB Routing layout	#
#   04-11-2023        	#
# #####################	#

drc style drc(full)


box 0 0 0 0
#load user_analog_project_wrapper_empty

set up 2920
set right 3520

# OEB del lado izquierdo
set x_vccd2_left 10
set y_vccd2_left 6.3
set y_vccd2_pin_t 3243.210
set y_vccd2_pin_b 3219.210
set oeb_14 2528.100
set oeb_15 2311.990
set oeb_16 2095.880
set oeb_17 1879.770
set oeb_18 1663.660
set oeb_19 1447.550
set oeb_20 1232.440
set oeb_21 594.330
set oeb_22 378.220
set oeb_23 162.110
set oeb_24 55.000
set oeb_25 31.360
set oeb_26 7.720
set x_vssd2_left 14
set y_vssd2_left 12.3
set y_vssd2_pin_t 888.450
set y_vssd2_pin_b 814.440



# vertical left vccd2
box [expr $x_vccd2_left]um [expr $y_vccd2_left - 1]um [expr $x_vccd2_left + 2]um [expr $y_vccd2_pin_t]um
paint m4

# vertical left vssd2
box [expr $x_vssd2_left]um [expr $y_vssd2_left - 1]um [expr $x_vssd2_left + 2]um [expr $y_vssd2_pin_b + 74.01]um
paint m4

#vccd2
#box 0um [expr $y_vccd2_pin_b]um [expr $x_vccd2_left + 2]um [expr $y_vccd2_pin_b + 24]um
#paint m3
#box [expr $x_vccd2_left + 0.5]um [expr $y_vccd2_pin_t - 1.5]um [expr $x_vccd2_left + 1.5]um [expr $y_vccd2_pin_t - 0.5]um
#paint via3

#vssd2
box 1um [expr $y_vssd2_pin_b]um [expr $x_vssd2_left + 2]um [expr $y_vssd2_pin_b + 74.01]um
paint m3

box [expr $x_vssd2_left + 0.2]um [expr $y_vssd2_pin_b +0.2 ]um [expr $x_vssd2_left + 1.8]um [expr $y_vssd2_pin_t - 0.2]um
paint via3

#oeb14
box 0um  [expr $oeb_14]um [expr $x_vccd2_left + 2]um [expr $oeb_14 + 2]um
paint m3
box 9um  [expr $oeb_14]um 10um [expr $oeb_14 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_14 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_14 + 1.5]um
paint via3

#oeb15
box 0um  [expr $oeb_15]um [expr $x_vccd2_left + 2]um [expr $oeb_15 + 2]um
paint m3
box 9um  [expr $oeb_15]um 10um [expr $oeb_15 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_15 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_15 + 1.5]um
paint via3

#oeb16
box 0um  [expr $oeb_16]um [expr $x_vccd2_left + 2]um [expr $oeb_16 + 2]um
paint m3
box 9um  [expr $oeb_16]um 10um [expr $oeb_16 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_16 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_16 + 1.5]um
paint via3

#oeb17
box 0um  [expr $oeb_17]um [expr $x_vccd2_left + 2]um [expr $oeb_17 + 2]um
paint m3
box 9um  [expr $oeb_17]um 10um [expr $oeb_17 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_17 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_17 + 1.5]um
paint via3

#oeb18
box 0um  [expr $oeb_18]um [expr $x_vccd2_left + 2]um [expr $oeb_18 + 2]um
paint m3
box 9um  [expr $oeb_18]um 10um [expr $oeb_18 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_18 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_18 + 1.5]um
paint via3

#oeb19
box 0um  [expr $oeb_19]um [expr $x_vccd2_left + 2]um [expr $oeb_19 + 2]um
paint m3
box 9um  [expr $oeb_19]um 10um [expr $oeb_19 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_19 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_19 + 1.5]um
paint via3

#oeb20
box 0um  [expr $oeb_20]um [expr $x_vccd2_left + 2]um [expr $oeb_20 + 2]um
paint m3
box 9um  [expr $oeb_20]um 10um [expr $oeb_20 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_20 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_20 + 1.5]um
paint via3

#oeb21
box 0um  [expr $oeb_21]um [expr $x_vccd2_left + 2]um [expr $oeb_21 + 2]um
paint m3
box 9um  [expr $oeb_21]um 10um [expr $oeb_21 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_21 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_21 + 1.5]um
paint via3

#oeb22
box 0um  [expr $oeb_22]um [expr $x_vccd2_left + 2]um [expr $oeb_22 + 2]um
paint m3
box 9um  [expr $oeb_22]um 10um [expr $oeb_22 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_22 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_22 + 1.5]um
paint via3

#oeb23
box 0um  [expr $oeb_23]um [expr $x_vccd2_left + 2]um [expr $oeb_23 + 2]um
paint m3
box 9um  [expr $oeb_23]um 10um [expr $oeb_23 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_23 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_23 + 1.5]um
paint via3

#oeb24
box 0um  [expr $oeb_24]um [expr $x_vccd2_left + 2]um [expr $oeb_24 + 2]um
paint m3
box 9um  [expr $oeb_24]um 10um [expr $oeb_24 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_24 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_24 + 1.5]um
paint via3

#oeb25
box 0um  [expr $oeb_25]um [expr $x_vccd2_left + 2]um [expr $oeb_25 + 2]um
paint m3
box 9um  [expr $oeb_25]um 10um [expr $oeb_25 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_25 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_25 + 1.5]um
paint via3

#oeb26
box 0um  [expr $oeb_26]um [expr $x_vccd2_left + 2]um [expr $oeb_26 + 2]um
paint m3
box 9um  [expr $oeb_26]um 10um [expr $oeb_26 + 2]um
paint rmetal3
box [expr $x_vccd2_left + 0.5]um [expr $oeb_26 + 0.5]um [expr $x_vccd2_left + 1.5]um [expr $oeb_26 + 1.5]um
paint via3

###################################


# OEB del lado derecho
set x_max 2920.000
set x_vccd2_right 10
set x_vssd2_right 14
set oeb_0 25.450
set oeb_1 49.090
set oeb_2 72.730
set oeb_3 96.370
set oeb_4 120.010
set oeb_5 252.300
set oeb_6 475.590
set oeb_7 1375.700
set oeb_8 1597.810
set oeb_9 1823.920
set oeb_10 2056.030
set oeb_11 2278.140
set oeb_12 2500.250
set oeb_13 2947.360



# horizontal bottom vccd2
box [expr $x_vccd2_left]um [expr $y_vccd2_left]um [expr $x_max - $x_vccd2_right]um [expr $y_vccd2_left + 2]um
paint m5
box [expr $x_vccd2_left+0.2]um [expr $y_vccd2_left+0.2]um [expr $x_vccd2_right+1.8]um [expr $y_vccd2_left + 1.8]um
paint via4
box [expr $x_max - $x_vccd2_right-1.8]um [expr $y_vccd2_left+0.2]um [expr $x_max - $x_vccd2_right-0.2]um [expr $y_vccd2_left + 1.8]um
paint via4

# horizontal bottom vssd2
box [expr $x_vssd2_left]um [expr $y_vssd2_left]um [expr $x_max - $x_vssd2_right]um [expr $y_vssd2_left + 2]um
paint m5
box [expr $x_vssd2_left+0.2]um [expr $y_vssd2_left+0.2]um [expr $x_vssd2_left+1.8]um [expr $y_vssd2_left + 1.8]um
paint via4
box [expr $x_max - $x_vssd2_right-1.8]um [expr $y_vssd2_left+0.2]um [expr $x_max - $x_vssd2_right-0.2]um [expr $y_vssd2_left + 1.8]um
paint via4

# vertical right vccd2
box [expr $x_max - $x_vccd2_right - 2]um [expr $y_vccd2_left]um [expr $x_max - $x_vccd2_right]um [expr $oeb_13 + 2]um
paint m4

# vertical right vss2
box [expr $x_max - $x_vssd2_right - 2]um [expr $y_vssd2_left]um [expr $x_max - $x_vssd2_right]um [expr $oeb_11 + 2]um
paint m4

#oeb0
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_0]um [expr $x_max]um [expr $oeb_0 + 2]um
paint m3
box 2910um  [expr $oeb_0]um 2911um [expr $oeb_0 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_0 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_0 + 1.5]um
paint via3

#oeb1
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_1]um [expr $x_max]um [expr $oeb_1 + 2]um
paint m3
box 2910um  [expr $oeb_1]um 2911um [expr $oeb_1 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_1 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_1 + 1.5]um
paint via3

#oeb2
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_2]um [expr $x_max]um [expr $oeb_2 + 2]um
paint m3
box 2910um  [expr $oeb_2]um 2911um [expr $oeb_2 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_2 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_2 + 1.5]um
paint via3

#oeb3
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_3]um [expr $x_max]um [expr $oeb_3 + 2]um
paint m3
box 2910um  [expr $oeb_3]um 2911um [expr $oeb_3 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_3 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_3 + 1.5]um
paint via3

#oeb4
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_4]um [expr $x_max]um [expr $oeb_4 + 2]um
paint m3
box 2910um  [expr $oeb_4]um 2911um [expr $oeb_4 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_4 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_4 + 1.5]um
paint via3

#oeb5
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_5]um [expr $x_max]um [expr $oeb_5 + 2]um
paint m3
box 2910um  [expr $oeb_5]um 2911um [expr $oeb_5 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_5 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_5 + 1.5]um
paint via3

#oeb6
box [expr $x_max - $x_vssd2_right - 2]um  [expr $oeb_6]um [expr $x_max]um [expr $oeb_6 + 2]um
paint m3
box 2910um  [expr $oeb_6]um 2911um [expr $oeb_6 + 2]um
paint rmetal3
box [expr $x_max - $x_vssd2_right - 1.5]um [expr $oeb_6 + 0.5]um [expr $x_max - $x_vssd2_right - 0.5]um [expr $oeb_6 + 1.5]um
paint via3

#oeb7
box [expr $x_max - $x_vssd2_right - 2]um  [expr $oeb_7]um [expr $x_max]um [expr $oeb_7 + 2]um
paint m3
box 2910um  [expr $oeb_7]um 2911um [expr $oeb_7 + 2]um
paint rmetal3
box [expr $x_max - $x_vssd2_right - 1.5]um [expr $oeb_7 + 0.5]um [expr $x_max - $x_vssd2_right - 0.5]um [expr $oeb_7 + 1.5]um
paint via3

#oeb8
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_8]um [expr $x_max]um [expr $oeb_8 + 2]um
paint m3
box 2910um  [expr $oeb_8]um 2911um [expr $oeb_8 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_8 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_8 + 1.5]um
paint via3

#oeb9
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_9]um [expr $x_max]um [expr $oeb_9 + 2]um
paint m3
box 2910um  [expr $oeb_9]um 2911um [expr $oeb_9 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_9 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_9 + 1.5]um
paint via3

#oeb10
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_10]um [expr $x_max]um [expr $oeb_10 + 2]um
paint m3
box 2910um  [expr $oeb_10]um 2911um [expr $oeb_10 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_10 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_10 + 1.5]um
paint via3

#oeb11
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_11]um [expr $x_max]um [expr $oeb_11 + 2]um
paint m3
box 2910um  [expr $oeb_11]um 2911um [expr $oeb_11 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_11 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_11 + 1.5]um
paint via3

#oeb12
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_12]um [expr $x_max]um [expr $oeb_12 + 2]um
paint m3
box 2910um  [expr $oeb_12]um 2911um [expr $oeb_12 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_12 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_12 + 1.5]um
paint via3

#oeb13
box [expr $x_max - $x_vccd2_right - 2]um  [expr $oeb_13]um [expr $x_max]um [expr $oeb_13 + 2]um
paint m3
box 2910um  [expr $oeb_13]um 2911um [expr $oeb_13 + 2]um
paint rmetal3
box [expr $x_max - $x_vccd2_right - 1.5]um [expr $oeb_13 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $oeb_13 + 1.5]um
paint via3

proc connect_not_used_io_outs { } {
    # io out 0
    set out_0 19.54
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_0]um [expr $x_max]um [expr $out_0 + 2]um
    paint m3
    box 2910um  [expr $out_0]um 2911um [expr $out_0 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_0 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_0 + 1.5]um
    paint via3

    # io out 1
    set out_1 43.18
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_1]um [expr $x_max]um [expr $out_1 + 2]um
    paint m3
    box 2910um  [expr $out_1]um 2911um [expr $out_1 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_1 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_1 + 1.5]um
    paint via3

    # io out 2
    set out_2 66.82
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_2]um [expr $x_max]um [expr $out_2 + 2]um
    paint m3
    box 2910um  [expr $out_2]um 2911um [expr $out_2 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_2 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_2 + 1.5]um
    paint via3

    # io out 3
    set out_3 90.46
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_3]um [expr $x_max]um [expr $out_3 + 2]um
    paint m3
    box 2910um  [expr $out_3]um 2911um [expr $out_3 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_3 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_3 + 1.5]um
    paint via3

    # io out 4
    set out_4 114.1
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_4]um [expr $x_max]um [expr $out_4 + 2]um
    paint m3
    box 2910um  [expr $out_4]um 2911um [expr $out_4 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_4 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_4 + 1.5]um
    paint via3

    # io out 5
    set out_5 246.39
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_5]um [expr $x_max]um [expr $out_5 + 2]um
    paint m3
    box 2910um  [expr $out_5]um 2911um [expr $out_5 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_5 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_5 + 1.5]um
    paint via3

    # io out 6
    set out_6 469.68
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_6]um [expr $x_max]um [expr $out_6 + 2]um
    paint m3
    box 2910um  [expr $out_6]um 2911um [expr $out_6 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_6 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_6 + 1.5]um
    paint via3

    # io out 8
    set out_8 1591.9
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_8]um [expr $x_max]um [expr $out_8 + 2]um
    paint m3
    box 2910um  [expr $out_8]um 2911um [expr $out_8 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_8 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_8 + 1.5]um
    paint via3

    # io out 9
    set out_9 1818.01
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_9]um [expr $x_max]um [expr $out_9 + 2]um
    paint m3
    box 2910um  [expr $out_9]um 2911um [expr $out_9 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_9 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_9 + 1.5]um
    paint via3


    # io out 10
    set out_10 2050.12
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_10]um [expr $x_max]um [expr $out_10 + 2]um
    paint m3
    box 2910um  [expr $out_10]um 2911um [expr $out_10 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_10 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_10 + 1.5]um
    paint via3

    # io out 11
    set out_11 2494.34
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_11]um [expr $x_max]um [expr $out_11 + 2]um
    paint m3
    box 2910um  [expr $out_11]um 2911um [expr $out_11 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_11 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_11 + 1.5]um
    paint via3

    # io out 12
    set out_12 2494.34
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_12]um [expr $x_max]um [expr $out_12 + 2]um
    paint m3
    box 2910um  [expr $out_12]um 2911um [expr $out_12 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_12 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_12 + 1.5]um
    paint via3

    # io out 13
    set out_13 2941.450
    box [expr $x_max - $x_vccd2_right - 2]um  [expr $out_13]um [expr $x_max]um [expr $out_13 + 2]um
    paint m3
    box 2910um  [expr $out_13]um 2911um [expr $out_13 + 2]um
    paint rmetal3
    box [expr $x_max - $x_vccd2_right - 1.5]um [expr $out_13 + 0.5]um [expr $x_max - $x_vccd2_right - 0.5]um [expr $out_13 + 1.5]um
    paint via3

    # io out 14
    set out_14 2534.01
    box [expr $x_vccd2_left + 2]um  [expr $out_14]um 0um [expr $out_14 + 2]um
    paint m3
    box 9um  [expr $out_14]um 10um [expr $out_14 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_14 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_14 + 1.5]um
    paint via3

    # io out 15
    set out_15 2317.9
    box [expr $x_vccd2_left + 2]um  [expr $out_15]um 0um [expr $out_15 + 2]um
    paint m3
    box 9um  [expr $out_15]um 10um [expr $out_15 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_15 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_15 + 1.5]um
    paint via3

    # io out 16
    set out_16 2101.79
    box [expr $x_vccd2_left + 2]um  [expr $out_16]um 0um [expr $out_16 + 2]um
    paint m3
    box 9um  [expr $out_16]um 10um [expr $out_16 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_16 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_16 + 1.5]um
    paint via3

    # io out 17
    set out_17 1885.68
    box [expr $x_vccd2_left + 2]um  [expr $out_17]um 0um [expr $out_17 + 2]um
    paint m3
    box 9um  [expr $out_17]um 10um [expr $out_17 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_17 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_17 + 1.5]um
    paint via3

    # io out 18
    set out_18 1669.57
    box [expr $x_vccd2_left + 2]um  [expr $out_18]um 0um [expr $out_18 + 2]um
    paint m3
    box 9um  [expr $out_18]um 10um [expr $out_18 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_18 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_18 + 1.5]um
    paint via3

    # io out 19
    set out_19 1453.46
    box [expr $x_vccd2_left + 2]um  [expr $out_19]um 0um [expr $out_19 + 2]um
    paint m3
    box 9um  [expr $out_19]um 10um [expr $out_19 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_19 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_19 + 1.5]um
    paint via3

    # io out 20
    set out_20 1238.35
    box [expr $x_vccd2_left + 2]um  [expr $out_20]um 0um [expr $out_20 + 2]um
    paint m3
    box 9um  [expr $out_20]um 10um [expr $out_20 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_20 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_20 + 1.5]um
    paint via3

    # io out 21
    set out_21 600.24
    box [expr $x_vccd2_left + 2]um  [expr $out_21]um 0um [expr $out_21 + 2]um
    paint m3
    box 9um  [expr $out_21]um 10um [expr $out_21 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_21 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_21 + 1.5]um
    paint via3

    # io out 22
    set out_22 384.13
    box [expr $x_vccd2_left + 2]um  [expr $out_22]um 0um [expr $out_22 + 2]um
    paint m3
    box 9um  [expr $out_22]um 10um [expr $out_22 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_22 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_22 + 1.5]um
    paint via3

    # io out 23
    set out_23 168.02
    box [expr $x_vccd2_left + 2]um  [expr $out_23]um 0um [expr $out_23 + 2]um
    paint m3
    box 9um  [expr $out_23]um 10um [expr $out_23 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_23 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_23 + 1.5]um
    paint via3

    # io out 24
    set out_24 60.91
    box [expr $x_vccd2_left + 2]um  [expr $out_24]um 0um [expr $out_24 + 2]um
    paint m3
    box 9um [expr $out_24]um 10um [expr $out_24 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_24 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_24 + 1.5]um
    paint via3

    # io out 25
    set out_25 37.27
    box [expr $x_vccd2_left + 2]um [expr $out_25]um 0um [expr $out_25 + 2]um
    paint m3
    box 9um [expr $out_25]um 10um [expr $out_25 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_25 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_25 + 1.5]um
    paint via3

    # io out 26
    set out_26 13.63
    box [expr $x_vccd2_left + 2]um  [expr $out_26]um 0um [expr $out_26 + 2]um
    paint m3
    box 9um [expr $out_26]um 10um [expr $out_26 + 2]um
    paint rmetal3
    box [expr $x_vccd2_left + 1.5]um [expr $out_26 + 0.5]um [expr $x_vccd2_left + 0.5]um [expr $out_26 + 1.5]um
    paint via3
}