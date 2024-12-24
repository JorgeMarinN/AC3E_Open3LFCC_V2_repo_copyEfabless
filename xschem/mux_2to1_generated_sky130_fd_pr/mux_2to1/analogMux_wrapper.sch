v {xschem version=3.1.0 file_version=1.2 
}
G {}
K {}
V {}
S {}
E {}
N 140 -270 160 -270 {
lab=CNT}
N 460 -240 460 -190 {
lab=EN}
N 470 -240 470 -220 {
lab=VSS}
N 470 -150 470 -130 {
lab=VDD}
N 470 -70 470 -50 {
lab=VSS}
N 460 -70 460 -30 {
lab=ENB}
N 420 -100 430 -100 {
lab=B}
N 490 -270 520 -270 {
lab=OUT}
N 520 -270 520 -160 {
lab=OUT}
N 490 -100 520 -100 {
lab=OUT}
N 420 -270 430 -270 {
lab=A}
N 460 -330 460 -300 {
lab=ENB}
N 470 -320 470 -300 {
lab=VDD}
N 460 -340 460 -330 {
lab=ENB}
N 470 -340 470 -320 {
lab=VDD}
N 460 -360 460 -340 {
lab=ENB}
N 460 -190 460 -130 {
lab=EN}
N 470 -170 470 -150 {
lab=VDD}
N 470 -220 470 -200 {
lab=VSS}
N 470 -200 470 -190 {
lab=VSS}
N 520 -160 520 -100 {
lab=OUT}
N 190 -340 190 -290 {
lab=VDD}
N 190 -250 190 -190 {
lab=VSS}
N 300 -250 300 -190 {
lab=VSS}
N 300 -340 300 -290 {
lab=VDD}
N 220 -270 270 -270 {
lab=ENB}
N 330 -270 340 -270 {
lab=EN}
C {devices/iopin.sym} 60 -290 2 0 {name=p1 lab=CNT}
C {devices/iopin.sym} 60 -270 2 0 {name=p2 lab=A}
C {devices/iopin.sym} 60 -250 2 0 {name=p3 lab=B}
C {devices/iopin.sym} 60 -230 2 0 {name=p4 lab=OUT}
C {devices/iopin.sym} 60 -180 2 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 60 -160 2 0 {name=p6 lab=VSS}
C {mux_2to1_generated_sky130_fd_pr/inverter2/inverter2.sym} 170 -250 0 0 {name=inv1
}
C {mux_2to1_generated_sky130_fd_pr/inverter2/inverter2.sym} 280 -250 0 0 {name=inv2
}
C {mux_2to1_generated_sky130_fd_pr/tgate/tgate.sym} 420 -230 0 0 {name=tgate1}
C {mux_2to1_generated_sky130_fd_pr/tgate/tgate.sym} 420 -60 0 0 {name=tgate2
}
C {devices/lab_pin.sym} 240 -270 3 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 340 -270 2 0 {name=l2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 140 -270 0 0 {name=l4 sig_type=std_logic lab=CNT}
C {devices/lab_pin.sym} 420 -270 0 0 {name=l8 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 420 -100 0 0 {name=l9 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 470 -170 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -190 2 0 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -340 2 0 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -50 2 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -360 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 460 -30 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 460 -190 0 0 {name=l16 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 520 -180 2 0 {name=l17 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 240 -270 3 0 {name=l3 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 190 -340 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -190 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -190 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -340 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -290 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 190 -250 0 0 {name=l6 lab=VSS}
C {devices/lab_pin.sym} 160 -270 0 0 {name=l7 lab=CNT}
C {devices/lab_pin.sym} 220 -270 0 0 {name=l18 lab=ENB}
C {devices/lab_pin.sym} 300 -290 0 0 {name=l19 lab=VDD}
C {devices/lab_pin.sym} 300 -250 0 0 {name=l20 lab=VSS}
C {devices/lab_pin.sym} 270 -270 0 0 {name=l21 lab=ENB}
C {devices/lab_pin.sym} 330 -270 0 0 {name=l22 lab=EN}
C {devices/lab_pin.sym} 460 -300 0 0 {name=l23 lab=ENB}
C {devices/lab_pin.sym} 460 -240 0 0 {name=l24 lab=EN}
C {devices/lab_pin.sym} 470 -300 0 0 {name=l25 lab=VDD}
C {devices/lab_pin.sym} 470 -240 0 0 {name=l26 lab=VSS}
C {devices/lab_pin.sym} 430 -270 0 0 {name=l27 lab=A}
C {devices/lab_pin.sym} 490 -270 0 0 {name=l28 lab=OUT}
C {devices/lab_pin.sym} 460 -130 0 0 {name=l29 lab=EN}
C {devices/lab_pin.sym} 460 -70 0 0 {name=l30 lab=ENB}
C {devices/lab_pin.sym} 470 -130 0 0 {name=l31 lab=VDD}
C {devices/lab_pin.sym} 470 -70 0 0 {name=l32 lab=VSS}
C {devices/lab_pin.sym} 430 -100 0 0 {name=l33 lab=B}
C {devices/lab_pin.sym} 490 -100 0 0 {name=l34 lab=OUT}
