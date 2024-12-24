load power_stage_medium
clear

proc nmos_size {} {
    select cell nmos_waffle_32x32_0
    return [box size]
}

proc pmos_size {} {
    select cell pmos_waffle_48x48_0
    return [box size]
}

proc power_stage_size {} {
    select top cell
    return [box size]
}

proc shift_nmos {} {
    set nmos_offset [expr [lindex [pmos_size] 0] - [lindex [nmos_size] 0]]
    select cell nmos_waffle_32x32_1
    set nmos1_bbox [select bbox]
    box 0 0 [lindex $nmos1_bbox 2]i [lindex $nmos1_bbox 3]i
    select area
    box grow n 14um
    select more area "m5 m4 m3"
    move e ${nmos_offset}i
}

proc rotate_mos {} {
    clear
    select cell nmos_waffle_32x32_0
    select area
    rotate -90
    upsidedown
    select cell nmos_waffle_32x32_1
    select area
    rotate 90
    upsidedown
    select cell pmos_waffle_48x48_0
    select area
    rotate -90
    upsidedown
    select cell pmos_waffle_48x48_1
    select area
    rotate 90
    upsidedown
}

proc patch_interconnection {} {
    box 0um 936.14um 300.44um 966.9um
    paint "m3 m4 m5"
    box 147.94um 565.55um 371.98um 589.01um
    paint "m3 m4 m5"
    box 87.68um 270.24um 301.91um 301.77um
    paint "m3 m4 m5"
    if {0} {
    select clear
    lappend patch_box 300 12
    set top_size [power_stage_size]
    box position [lindex $top_size 0]i [lindex $top_size 1]i
    box size [lindex $patch_box 0]um [lindex $patch_box 1]um
    box move w [expr [lindex $patch_box 0] + 10]um
    box move s [lindex $patch_box 1]um
    select area "m3 m4 m5"
    delete
    select cell pmos_waffle_48x48_1
    box move e [lindex $patch_box 1]um
    box size [lindex $patch_box 0]um [lindex $patch_box 1]um
    paint "m3 m4 m5"
    }
}

shift_nmos
rotate_mos
patch_interconnection

view
save power_stage_1