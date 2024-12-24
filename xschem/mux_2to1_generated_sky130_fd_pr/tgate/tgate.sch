v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -100 220 -80 {
lab=EN}
N 120 -290 190 -290 {
lab=I}
N 120 -290 120 -140 {
lab=I}
N 120 -140 190 -140 {
lab=I}
N 250 -140 320 -140 {
lab=O}
N 320 -290 320 -140 {
lab=O}
N 250 -290 320 -290 {
lab=O}
N 220 -360 220 -330 {
lab=ENB}
N 220 -80 220 -70 {
lab=EN}
N 80 -210 120 -210 {
lab=I}
N 320 -210 360 -210 {
lab=O}
N 220 -180 220 -140 {
lab=VSS}
N 220 -290 220 -240 {
lab=VDD}
N 220 -190 220 -180 {
lab=VSS}
N 220 -200 220 -190 {
lab=VSS}
N 220 -240 220 -230 {
lab=VDD}
N 490 -140 490 -120 {
lab=VSS}
N 490 -90 540 -90 {
lab=VSS}
N 420 -90 450 -90 {
lab=VSS}
N 490 -60 490 -30 {
lab=VSS}
N 540 -90 550 -90 {
lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/nmos4_lvt/nmos4_lvt.sym} 220 -120 1 1 {name=MN0
w=1.5
l=0.45
nf=30
model=nmos4_lvt
spiceprefix=X
}
C {devices/ipin.sym} 220 -70 0 0 {name=p1 lab=EN}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/pmos4_lvt/pmos4_lvt.sym} 220 -310 3 1 {name=MP0
w=1.5
l=0.45
nf=90
model=pmos4_lvt
spiceprefix=X
}
C {devices/ipin.sym} 220 -360 0 0 {name=p2 lab=ENB}
C {devices/iopin.sym} 80 -210 2 0 {name=p3 lab=I}
C {devices/iopin.sym} 360 -210 0 0 {name=p4 lab=O}
C {devices/iopin.sym} 120 -370 2 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 120 -350 2 0 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 220 -200 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -230 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -140 2 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -90 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -30 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -90 2 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -140 0 0 {name=l7 lab=O}
C {devices/lab_pin.sym} 220 -100 0 0 {name=l8 lab=EN}
C {devices/lab_pin.sym} 190 -140 0 0 {name=l9 lab=I}
C {devices/lab_pin.sym} 220 -140 2 0 {name=l10 lab=VSS}
C {devices/lab_pin.sym} 250 -290 0 0 {name=l11 lab=O}
C {devices/lab_pin.sym} 220 -330 0 0 {name=l12 lab=ENB}
C {devices/lab_pin.sym} 190 -290 0 0 {name=l13 lab=I}
C {devices/lab_pin.sym} 220 -290 2 0 {name=l14 lab=VDD}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/nmos4_lvt/nmos4_lvt.sym} 0 220 0 0 {name=MDUMMY0
w=1.5
l=0.45
nf=262
model=nmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 20 220 2 0 {name=l15 lab=VSS}
C {devices/lab_pin.sym} 20 190 0 0 {name=l16 lab=VSS}
C {devices/lab_pin.sym} -20 220 0 0 {name=l17 lab=VSS}
C {devices/lab_pin.sym} 20 250 0 0 {name=l18 lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/nmos4_lvt/nmos4_lvt.sym} 200 220 0 0 {name=MDUMMY1
w=1.5
l=0.45
nf=2
model=nmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 220 220 2 0 {name=l19 lab=VSS}
C {devices/lab_pin.sym} 220 190 0 0 {name=l20 lab=I}
C {devices/lab_pin.sym} 180 220 0 0 {name=l21 lab=VSS}
C {devices/lab_pin.sym} 220 250 0 0 {name=l22 lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/pmos4_lvt/pmos4_lvt.sym} 400 220 0 0 {name=MDUMMY2
w=1.5
l=0.45
nf=202
model=pmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 420 220 2 0 {name=l23 lab=VDD}
C {devices/lab_pin.sym} 420 250 0 0 {name=l24 lab=VDD}
C {devices/lab_pin.sym} 380 220 0 0 {name=l25 lab=VDD}
C {devices/lab_pin.sym} 420 190 0 0 {name=l26 lab=VDD}
C {mux_2to1_generated_sky130_fd_pr/BAG_prim/pmos4_lvt/pmos4_lvt.sym} 600 220 0 0 {name=MDUMMY3
w=1.5
l=0.45
nf=2
model=pmos4_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 620 220 2 0 {name=l27 lab=VDD}
C {devices/lab_pin.sym} 620 250 0 0 {name=l28 lab=I}
C {devices/lab_pin.sym} 580 220 0 0 {name=l29 lab=VDD}
C {devices/lab_pin.sym} 620 190 0 0 {name=l30 lab=VDD}
