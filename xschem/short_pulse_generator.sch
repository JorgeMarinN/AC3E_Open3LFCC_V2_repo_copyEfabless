v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 160 -560 160 -360 {}
L 4 860 -560 860 -360 {}
L 4 160 -360 860 -360 {}
L 4 160 -560 860 -560 {}
T {SHORT-PULSE GENERATOR} 390 -590 0 0 0.4 0.4 {}
N 410 -420 410 -380 {
lab=predly}
N 530 -480 530 -420 {
lab=dly8}
N 410 -520 430 -520 {
lab=predly}
N 410 -520 410 -420 {
lab=predly}
N 390 -420 430 -420 {
lab=predly}
N 630 -420 650 -420 {
lab=#net1}
N 410 -380 650 -380 {
lab=predly}
N 510 -520 650 -520 {
lab=#net2}
N 290 -420 310 -420 {
lab=#net3}
N 530 -480 650 -480 {
lab=dly8}
N 530 -420 550 -420 {
lab=dly8}
N 140 -420 210 -420 {
lab=VIN}
N 770 -500 880 -500 {
lab=VFE}
N 770 -400 880 -400 {
lab=VRE}
N 420 -160 480 -160 {
lab=V_gatein,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36}
N 560 -160 660 -160 {
lab=n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36,dly7}
C {devices/iopin.sym} 140 -420 2 0 {name=p1 lab=VIN}
C {devices/iopin.sym} 880 -500 0 0 {name=p2 lab=VFE}
C {devices/iopin.sym} 880 -400 0 0 {name=p3 lab=VRE}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {sky130_stdcells/inv_1.sym} 350 -420 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 470 -520 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 590 -420 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 250 -420 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_8.sym} 470 -420 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_2.sym} 710 -500 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_2.sym} 710 -400 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 410 -460 0 0 {name=p12 sig_type=std_logic lab=predly}
C {devices/lab_pin.sym} 530 -460 0 0 {name=p13 sig_type=std_logic lab=dly8}
C {devices/lab_pin.sym} 510 -420 1 1 {name=l39 sig_type=std_logic lab=V_gatein}
C {sky130_stdcells/inv_1.sym} 510 -280 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 550 -280 2 0 {name=p14 sig_type=std_logic lab=dly8}
C {devices/lab_pin.sym} 470 -280 0 0 {name=p15 sig_type=std_logic lab=dly7}
C {devices/lab_pin.sym} 420 -160 0 0 {name=p6 sig_type=std_logic lab=V_gatein,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36}
C {devices/lab_pin.sym} 660 -160 0 1 {name=p7 sig_type=std_logic lab=n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36,dly7}
C {sky130_stdcells/clkdlybuf4s50_2.sym} 520 -160 0 0 {name=x10[0:35] VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 120 -80 0 0 {name=LIB1 only_toplevel=false value="
*.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
*.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
