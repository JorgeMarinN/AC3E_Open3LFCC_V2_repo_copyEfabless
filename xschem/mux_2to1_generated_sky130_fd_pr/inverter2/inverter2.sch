v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -190 160 -170 {
lab=VSS}
N 160 -230 160 -210 {
lab=VSS}
N 160 -110 160 -90 {
lab=VSS}
N 100 -140 120 -140 {
lab=VSS}
N 160 -140 190 -140 {
lab=VSS}
N 100 -260 120 -260 {
lab=in}
N 160 -310 160 -290 {
lab=out}
N 160 -260 190 -260 {
lab=VSS}
N 160 -350 160 -330 {
lab=out}
N 100 -380 120 -380 {
lab=in}
N 160 -430 160 -410 {
lab=VDD}
N 160 -380 230 -380 {
lab=VDD}
N 190 -260 230 -260 {
lab=VSS}
N 190 -140 230 -140 {
lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/nmos4_lvt/nmos4_lvt.sym} 140 -260 0 0 {name=MN
w=1.5
l=0.45
nf=20
model=nmos4_lvt
spiceprefix=X
}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/pmos4_lvt/pmos4_lvt.sym} 140 -380 0 0 {name=MP
w=1.5
l=0.45
nf=40
model=pmos4_lvt
spiceprefix=X
}
C {devices/iopin.sym} 40 -510 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 40 -490 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -460 0 0 {name=p3 lab=in}
C {devices/opin.sym} 70 -460 0 0 {name=p4 lab=out}
C {devices/lab_pin.sym} 160 -90 0 0 {name=l1 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 100 -140 0 0 {name=l2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 160 -190 0 0 {name=l3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 230 -140 2 0 {name=l4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 160 -210 2 0 {name=l5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 230 -260 2 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 100 -260 0 0 {name=l7 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 160 -310 2 0 {name=l8 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} 160 -330 0 0 {name=l9 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} 100 -380 0 0 {name=l10 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 160 -430 2 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 230 -380 2 0 {name=l12 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 160 -290 0 0 {name=l13 lab=out}
C {devices/lab_pin.sym} 120 -260 0 0 {name=l14 lab=in}
C {devices/lab_pin.sym} 160 -230 0 0 {name=l15 lab=VSS}
C {devices/lab_pin.sym} 160 -260 2 0 {name=l16 lab=VSS}
C {devices/lab_pin.sym} 160 -350 0 0 {name=l17 lab=out}
C {devices/lab_pin.sym} 120 -380 0 0 {name=l18 lab=in}
C {devices/lab_pin.sym} 160 -410 0 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} 160 -380 2 0 {name=l20 lab=VDD}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/nmos4_lvt/nmos4_lvt.sym} 0 380 0 0 {name=MDUMMY0
w=1.5
l=0.45
nf=124
model=nmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 20 380 2 0 {name=l21 lab=VSS}
C {devices/lab_pin.sym} 20 350 0 0 {name=l22 lab=VSS}
C {devices/lab_pin.sym} -20 380 0 0 {name=l23 lab=VSS}
C {devices/lab_pin.sym} 20 410 0 0 {name=l24 lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/pmos4_lvt/pmos4_lvt.sym} 200 380 0 0 {name=MDUMMY1
w=1.5
l=0.45
nf=104
model=pmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 220 380 2 0 {name=l25 lab=VDD}
C {devices/lab_pin.sym} 220 410 0 0 {name=l26 lab=VDD}
C {devices/lab_pin.sym} 180 380 0 0 {name=l27 lab=VDD}
C {devices/lab_pin.sym} 220 350 0 0 {name=l28 lab=VDD}
