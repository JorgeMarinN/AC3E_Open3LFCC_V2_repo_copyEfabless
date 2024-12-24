v {xschem version=3.1.0 file_version=1.2 
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1720 -200 1720 -440 1900 -440 1900 -200 1720 -200 {}
P 4 5 760 -410 1040 -410 1040 -150 760 -150 760 -410 {}
P 4 5 1100 -560 1100 -940 1900 -940 1900 -560 1100 -560 {}
T {Input Values} 1150 -870 0 0 0.4 0.4 {}
T {Power Supplies} 820 -400 0 0 0.4 0.4 {}
T {Flying Capacitor} 1740 -420 0 0 0.4 0.4 {}
T {NMOS_PS3} 1320 -815 0 0 0.2 0.2 {}
T {PMOS_PS3} 1320 -800 0 0 0.2 0.2 {}
T {PMOS1_EXT} 1320 -780 0 0 0.2 0.2 {}
T {NMOS1_EXT} 1320 -760 0 0 0.2 0.2 {}
T {PMOS2_EXT} 1320 -740 0 0 0.2 0.2 {}
T {NMOS2_EXT} 1320 -720 0 0 0.2 0.2 {}
T {Modulator} 1420 -920 0 0 0.4 0.4 {}
T {Clock} 1430 -870 0 0 0.4 0.4 {}
T {Reset} 1690 -870 0 0 0.4 0.4 {}
T {User Space} 310 -710 0 0 0.4 0.4 {}
T {Reset parte en 2*T y dura 3*T} 1730 -770 0 0 0.2 0.2 {}
T {T=78n} 1490 -860 0 0 0.2 0.2 {}
T {CLKSR} 1650 -730 0 0 0.4 0.4 {}
T {SR} 1770 -730 0 0 0.4 0.4 {}
N 510 -650 530 -650 {
lab=vdda1}
N 510 -630 530 -630 {
lab=vdda2}
N 510 -610 530 -610 {
lab=vssa1}
N 510 -590 530 -590 {
lab=vssa2}
N 510 -570 530 -570 {
lab=vccd1}
N 510 -550 530 -550 {
lab=vccd2}
N 510 -530 530 -530 {
lab=vssd1}
N 510 -510 530 -510 {
lab=vssd2}
N 510 -490 530 -490 {
lab=wbs_ack_o}
N 510 -470 530 -470 {
lab=wbs_dat_o[31:0]}
N 510 -450 530 -450 {
lab=la_data_out[127:0]}
N 510 -430 530 -430 {
lab=io_out[26:0]}
N 510 -410 530 -410 {
lab=io_oeb[26:0]}
N 510 -390 530 -390 {
lab=gpio_analog[17:0]}
N 510 -370 530 -370 {
lab=gpio_noesd[17:0]}
N 510 -350 530 -350 {
lab=io_analog[10:0]}
N 510 -330 530 -330 {
lab=io_clamp_high[2:0]}
N 510 -310 530 -310 {
lab=io_clamp_low[2:0]}
N 510 -290 530 -290 {
lab=user_irq[2:0]}
N 190 -650 210 -650 {
lab=wb_clk_i}
N 190 -630 210 -630 {
lab=wb_rst_i}
N 190 -610 210 -610 {
lab=wb_stb_i}
N 190 -590 210 -590 {
lab=wb_cyc_i}
N 190 -570 210 -570 {
lab=wb_we_i}
N 190 -550 210 -550 {
lab=wb_sel_i[3:0]}
N 190 -530 210 -530 {
lab=wb_dat_i[31:0]}
N 190 -510 210 -510 {
lab=wb_adr_i[31:0]}
N 190 -490 210 -490 {
lab=la_data_in[127:0]}
N 190 -470 210 -470 {
lab=la_oenb[127:0]}
N 190 -450 210 -450 {
lab=io_in[26:0]}
N 190 -430 210 -430 {
lab=io_in_3v3[26:0]}
N 190 -410 210 -410 {
lab=user_clock2}
C {/home/designer/repositories/AC3E_Open3LFCC_V2_repo/xschem/user_analog_project_wrapper.sym} 360 -470 0 0 {name=x1}
C {devices/code_shown.sym} 20 -800 0 0 {name=Lib only_toplevel=false value="
.lib /home/designer/.volare/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /home/designer/repositories/AC3E_Open3LFCC_V2_repo/xschem/Modulatorx.spice
"
}
C {devices/ipin.sym} 530 -650 2 0 {name=p1 lab=vdda1}
C {devices/ipin.sym} 530 -630 2 0 {name=p2 lab=vdda2
}
C {devices/ipin.sym} 530 -610 2 0 {name=p3 lab=vssa1}
C {devices/ipin.sym} 530 -590 2 0 {name=p4 lab=vssa2}
C {devices/ipin.sym} 530 -570 2 0 {name=p5 lab=vccd1}
C {devices/ipin.sym} 530 -550 2 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 530 -530 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 530 -510 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 530 -490 2 0 {name=p9 lab=wbs_ack_o}
C {devices/ipin.sym} 530 -470 2 0 {name=p10 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 530 -450 2 0 {name=p11 lab=la_data_out[127:0]}
C {devices/opin.sym} 530 -430 0 0 {name=p12 lab=io_out[26:0]}
C {devices/opin.sym} 530 -410 0 0 {name=p13 lab=io_oeb[26:0]}
C {devices/ipin.sym} 530 -390 2 0 {name=p14 lab=gpio_analog[17:0]}
C {devices/ipin.sym} 530 -370 2 0 {name=p15 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 530 -350 0 0 {name=p16 lab=io_analog[10:0]}
C {devices/ipin.sym} 530 -330 2 0 {name=p17 lab=io_clamp_high[2:0]}
C {devices/ipin.sym} 530 -310 2 0 {name=p18 lab=io_clamp_low[2:0]}
C {devices/ipin.sym} 530 -290 2 0 {name=p19 lab=user_irq[2:0]}
C {devices/ipin.sym} 190 -650 0 0 {name=p20 lab=wb_clk_i}
C {devices/ipin.sym} 190 -630 0 0 {name=p21 lab=wb_rst_i}
C {devices/ipin.sym} 190 -610 0 0 {name=p22 lab=wb_stb_i}
C {devices/ipin.sym} 190 -590 0 0 {name=p23 lab=wb_cyc_i}
C {devices/ipin.sym} 190 -570 0 0 {name=p24 lab=wb_we_i}
C {devices/ipin.sym} 190 -550 0 0 {name=p25 lab=wb_sel_i[3:0]}
C {devices/ipin.sym} 190 -530 0 0 {name=p26 lab=wb_dat_i[31:0]}
C {devices/ipin.sym} 190 -510 0 0 {name=p27 lab=wb_adr_i[31:0]}
C {devices/ipin.sym} 190 -490 0 0 {name=p28 lab=la_data_in[127:0]}
C {devices/ipin.sym} 190 -470 0 0 {name=p29 lab=la_oenb[127:0]}
C {devices/ipin.sym} 190 -450 0 0 {name=p30 lab=io_in[26:0]}
C {devices/ipin.sym} 190 -430 0 0 {name=p31 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 190 -410 0 0 {name=p32 lab=user_clock2}
C {devices/vsource.sym} 830 -220 0 0 {name=VCCD2 value=1.8}
C {devices/lab_pin.sym} 830 -250 2 0 {name=l3 sig_type=std_logic lab=vccd2}
C {devices/code_shown.sym} 20 -240 0 0 {name=Control
only_toplevel=true
value="
.option scale=1e-6
.control
save \\"V(io_analog[4])\\" \\"V(io_analog[5])\\" \\"V(io_analog[6])\\" \\"V(io_out[7])\\"
*save \\"V(io_out[0])\\" \\"V(io_out[1])\\" \\"V(io_out[2])\\" \\"V(io_out[3])\\"
tran 39n 60u
*plot \\"V(io_analog[5])\\"
*plot \\"V(io_out[0])\\" \\"V(io_out[1])\\" \\"V(io_out[2])\\" \\"V(io_out[3])\\"
.endc
" }
C {devices/lab_pin.sym} 1200 -810 0 0 {name=l10 sig_type=std_logic lab=io_in[23]}
C {devices/lab_pin.sym} 1260 -810 2 0 {name=l12 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1200 -790 0 0 {name=l13 sig_type=std_logic lab=io_in[22]}
C {devices/lab_pin.sym} 1260 -790 2 0 {name=l14 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -770 0 0 {name=l15 sig_type=std_logic lab=io_in[21]}
C {devices/lab_pin.sym} 1260 -770 2 0 {name=l16 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -750 0 0 {name=l17 sig_type=std_logic lab=io_in[20]}
C {devices/lab_pin.sym} 1260 -750 2 0 {name=l18 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -730 0 0 {name=l19 sig_type=std_logic lab=io_in[19]}
C {devices/lab_pin.sym} 1260 -730 2 0 {name=l20 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1200 -710 0 0 {name=l21 sig_type=std_logic lab=io_in[18]}
C {devices/lab_pin.sym} 1260 -710 2 0 {name=l22 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1200 -690 0 0 {name=l23 sig_type=std_logic lab=io_in[17]}
C {devices/lab_pin.sym} 1260 -690 2 0 {name=l24 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -670 0 0 {name=l25 sig_type=std_logic lab=io_in[16]}
C {devices/lab_pin.sym} 1260 -670 2 0 {name=l26 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1200 -650 0 0 {name=l27 sig_type=std_logic lab=io_in[15]}
C {devices/lab_pin.sym} 1260 -650 2 0 {name=l28 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -630 0 0 {name=l29 sig_type=std_logic lab=io_in[14]}
C {devices/lab_pin.sym} 1260 -630 2 0 {name=l30 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -610 0 0 {name=l31 sig_type=std_logic lab=io_in[10]}
C {devices/lab_pin.sym} 1260 -610 2 0 {name=l32 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 1200 -590 0 0 {name=l33 sig_type=std_logic lab=io_in[9]}
C {devices/lab_pin.sym} 1260 -590 2 0 {name=l34 sig_type=std_logic lab=vssd2}
C {devices/vsource.sym} 1420 -790 0 0 {name=VPLL value="PULSE (0 1.8 0 100p 100p 39n 78n)"}
C {devices/vsource.sym} 1420 -690 0 0 {name=VCLK value="PULSE (0 1.8 0 100p 100p 39n 78n)"}
C {devices/lab_pin.sym} 1420 -760 2 0 {name=l35 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1420 -660 2 0 {name=l36 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 1420 -820 2 0 {name=l37 sig_type=std_logic lab=user_clock2}
C {devices/lab_pin.sym} 1420 -720 2 0 {name=l38 sig_type=std_logic lab=io_in[26]}
C {devices/vsource.sym} 1660 -790 0 0 {name=VRESET value="PULSE(0 1.8 156n 100p 100p 234n 1e3)"}
C {devices/lab_pin.sym} 1660 -820 2 0 {name=l40 sig_type=std_logic lab=io_in[24]}
C {devices/lab_pin.sym} 1660 -760 2 0 {name=l39 sig_type=std_logic lab=vssd2}
C {devices/title.sym} 160 -40 0 0 {name=l43 author="AC3E"}
C {devices/code_shown.sym} 1100 -500 0 0 {name="CLKSR Generation"
only_toplevel=true
value="
*CLK_SR PARTEN EN 8T Y DURAN 3T, Y EL PERIODO DURA 5T
Vclk_sr01 clksr clk_sr01 PULSE (0 1.8 624n 100p 100p 234n 1e3)
Vclk_sr02 clk_sr01 clk_sr02 PULSE (0 1.8 1014n 100p 100p 234n 1e3)
Vclk_sr03 clk_sr02 clk_sr03 PULSE (0 1.8 1404n 100p 100p 234n 1e3)
Vclk_sr04 clk_sr03 clk_sr04 PULSE (0 1.8 1794n 100p 100p 234n 1e3)
Vclk_sr05 clk_sr04 clk_sr05 PULSE (0 1.8 2184n 100p 100p 234n 1e3)
Vclk_sr06 clk_sr05 clk_sr06 PULSE (0 1.8 2574n 100p 100p 234n 1e3)
Vclk_sr07 clk_sr06 clk_sr07 PULSE (0 1.8 2964n 100p 100p 234n 1e3)
Vclk_sr08 clk_sr07 clk_sr08 PULSE (0 1.8 3354n 100p 100p 234n 1e3)
Vclk_sr09 clk_sr08 clk_sr09 PULSE (0 1.8 3744n 100p 100p 234n 1e3)
Vclk_sr10 clk_sr09 clk_sr10 PULSE (0 1.8 4134n 100p 100p 234n 1e3)
Vclk_sr11 clk_sr10 clk_sr11 PULSE (0 1.8 4524n 100p 100p 234n 1e3)
Vclk_sr12 clk_sr11 clk_sr12 PULSE (0 1.8 4914n 100p 100p 234n 1e3)
Vclk_sr13 clk_sr12 clk_sr13 PULSE (0 1.8 5304n 100p 100p 234n 1e3)
Vclk_sr14 clk_sr13 clk_sr14 PULSE (0 1.8 5694n 100p 100p 234n 1e3)
Vclk_sr15 clk_sr14 clk_sr15 PULSE (0 1.8 6084n 100p 100p 234n 1e3)
Vclk_sr16 clk_sr15 clk_sr16 PULSE (0 1.8 6474n 100p 100p 234n 1e3)
Vclk_sr17 clk_sr16 clk_sr17 PULSE (0 1.8 6864n 100p 100p 234n 1e3)
Vclk_sr18 clk_sr17 vssd2 PULSE (0 1.8 7254n 100p 100p 234n 1e3)
" }
C {devices/code_shown.sym} 1960 -1080 0 0 {name="SR Generation"
only_toplevel=true
value="

* Carga Shift register
*                     PULSE (de_voltaje a_voltaje parte_en 100p 100p dura 1e3)
* Data_SR (dt[0]) (1) parte en 7*T y dura 5*T                     
Vdata_sr01 sr sr01 PULSE (0 1.8 546n 100p 100p 389.8n 1e3)

* Data_SR (dt[1]) (1) parte en 12*T y dura 5*T                     
Vdata_sr02 sr01 sr02 PULSE (0 1.8 936n 100p 100p 390n 1e3)

* Data_SR (dt[2]) (0) parte en 17*T y dura 5*T                     
*Vdata_sr03 sr02 sr03 PULSE (0 1.8 1326n 100p 100p 390n 1e3)

* Data_SR (dt[3]) (0) parte en 22*P y dura 5*T                     
*Vdata_sr04 sr03 sr04 PULSE (0 1.8 1716n 100p 100p 390n 1e3)

* Data_SR (dt[4]) (0) parte en 27*T y dura 5*T                     
*Vdata_sr05 sr04 sr05 PULSE (0 1.8 2106n 100p 100p 390n 1e3)

* Data_SR (SELECTOR_SIGNAL_GENERATOR_1[0]) (0) parte en (7+5*5)T y dura 5*T                     
*Vdata_sr06 sr05 sr06 PULSE (0 1.8 2496n 100p 100p 390n 1e3)

* Data_SR (SELECTOR_SIGNAL_GENERATOR_1[1]) (0) parte (7+5*6)T y dura 5*T                     
*Vdata_sr07 sr06 sr07 PULSE (0 1.8 2886n 100p 100p 390n 1e3)

* Data_SR (SELECTOR_SIGNAL_GENERATOR_2[0]) (0) parte (7+5*7)T y dura 5*T                        
*Vdata_sr08 sr07 sr08 PULSE (0 1.8 3276n 100p 100p 390n 1e3)

* Data_SR (SELECTOR_SIGNAL_GENERATOR_2[2]) (1) parte (7+5*8)T y dura 5*T                        
Vdata_sr09 sr02 sr09 PULSE (0 1.8 3666n 100p 100p 390n 1e3)

* Data_SR (OUTPUT_SELECTOR_EXTERNAL[0]) (0) parte (7+5*9)T y dura 5*T                        
*Vdata_sr10 sr09 sr10 PULSE (0 1.8 4056n 100p 100p 390n 1e3)

* Data_SR (OUTPUT_SELECTOR_EXTERNAL[1]) (0) parte (7+5*10)T y dura 5*T                        
*Vdata_sr11 sr10 sr11 PULSE (0 1.8 4446n 100p 100p 390n 1e3)

* Data_SR (OUTPUT_SELECTOR_EXTERNAL[2]) (0) parte (7+5*11)T y dura 5*T                        
*Vdata_sr12 sr11 sr12 PULSE (0 1.8 4806n 100p 100p 390n 1e3)

* Data_SR (OUTPUT_SELECTOR_EXTERNAL[3]) (0) parte (7+5*12)T y dura 5*T                     
*Vdata_sr13 sr12 sr13 PULSE (0 1.8 5226n 100p 100p 390n 1e3)

* Data_SR (INPUT_SELECTOR) (0) parte (7+5*13)T y dura 5*T     **EN (1) PASAN LAS ENTRADAS DIRECTO A LAS SALIDAS**              
*Vdata_sr14 sr09 sr14 PULSE (0 1.8 5616n 100p 100p 390n 1e3)

* Data_SR (CLK_SELECTOR) (0) parte en parte (7+5*14)T y dura 5*T    ** EN (1) USA EL CLK EXTERNO, EN (0) USA EL CLK DEL PLL**                 
*Vdata_sr15 sr14 sr15 PULSE (0 1.8 6006n 100p 100p 390n 1e3)

* Data_SR (PS_SELECTOR) (1) parte (7+5*15)T y dura 5*T   ** EN (1) LA SALIDA VA A PS1, EN (0) VA A PS2**                     
Vdata_sr16 sr09 sr16 PULSE (0 1.8 6396n 100p 100p 390n 1e3)

* Data_SR (PS3_SELECTOR) (0) parte (7+5*16)T y dura 5*T   ** EN (1) DEJA PASAR LAS SENALES d15 y d14 DIRECTAMENTE A PS3 Y APAGA LAS SALIDAS A PS1 Y PS2, EN (0) FUNCIONA LA LOGICA DE PS_SELECTOR ** 
*Vdata_sr17 sr16 sr17 vssd2 PULSE (0 1.8 6786n 100p 100p 390n 1e3)

*Data_SR (ENABLE_OUTPUT) (1) parte (7+5*17)T y dura 5*T  ** EN (1) DEJA PASAR LA SALIDA CONFIGURADA, EN (0) LAS SALIDAS PROVOCAN QUE LOS TRANSISTORES ESTEN ABIERTOS** 
Vdata_sr18 sr16 vssd2 PULSE (0 1.8 7176n 100p 100p 390n 1e3)

" }
C {devices/vsource.sym} 1230 -810 3 0 {name=V1 value=0}
C {devices/vsource.sym} 1230 -790 3 0 {name=V2 value=1.8}
C {devices/vsource.sym} 1230 -770 3 0 {name=V3 value=1.8}
C {devices/vsource.sym} 1230 -750 3 0 {name=V4 value=1.8}
C {devices/vsource.sym} 1230 -730 3 0 {name=V5 value=0}
C {devices/vsource.sym} 1230 -710 3 0 {name=V6 value=0}
C {devices/vsource.sym} 1230 -690 3 0 {name=V7 value=0}
C {devices/vsource.sym} 1230 -670 3 0 {name=V8 value=1.8}
C {devices/vsource.sym} 1230 -650 3 0 {name=V9 value=1.8}
C {devices/vsource.sym} 1230 -630 3 0 {name=V10 value=1.8}
C {devices/vsource.sym} 1230 -610 3 0 {name=V11 value=0}
C {devices/vsource.sym} 1230 -590 3 0 {name=V12 value=0}
C {devices/lab_pin.sym} 830 -190 2 0 {name=l1 sig_type=std_logic lab=vssd2}
C {devices/vsource.sym} 830 -310 0 0 {name=VCCD1 value=1.8}
C {devices/lab_pin.sym} 830 -340 2 0 {name=l2 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 830 -280 2 0 {name=l4 sig_type=std_logic lab=vssd1}
C {devices/vsource.sym} 920 -310 0 0 {name=VDDA1 value=3.3}
C {devices/lab_pin.sym} 920 -340 2 0 {name=l5 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 920 -280 2 0 {name=l6 sig_type=std_logic lab=vssa1}
C {devices/vsource.sym} 920 -220 0 0 {name=VDDA2 value=3.3}
C {devices/lab_pin.sym} 920 -250 2 0 {name=l7 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 920 -190 2 0 {name=l8 sig_type=std_logic lab=vssa2}
C {devices/code_shown.sym} 750 -530 0 0 {name="Ground references"
only_toplevel=true
value="
VSSD1GND vssd1 0 DC 0
VSSD2GND vssd2 0 DC 0
VSSA1GND vssa1 0 DC 0
VSSA2GND vssa2 0 DC 0
" }
C {devices/capa.sym} 1810 -260 3 0 {name=C1
m=1
value=8n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1780 -260 1 0 {name=l9 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 1840 -260 1 0 {name=l11 sig_type=std_logic lab=io_analog[6]}
C {devices/vsource.sym} 1660 -650 0 0 {name=VCLKSR value="0"}
C {devices/lab_pin.sym} 1660 -620 2 0 {name=l41 sig_type=std_logic lab=clksr}
C {devices/lab_pin.sym} 1660 -680 2 0 {name=l42 sig_type=std_logic lab=io_in[25]}
C {devices/vsource.sym} 1780 -650 0 0 {name=VSR value="0"}
C {devices/lab_pin.sym} 1780 -620 2 0 {name=l44 sig_type=std_logic lab=sr}
C {devices/lab_pin.sym} 1780 -680 2 0 {name=l45 sig_type=std_logic lab=io_in[8]}
