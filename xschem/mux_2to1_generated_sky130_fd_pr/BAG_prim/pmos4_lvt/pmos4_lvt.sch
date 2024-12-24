v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 -0 -40 -0 {
lab=G}
N 0 -60 0 -30 {
lab=S}
N 0 30 -0 60 {
lab=D}
N 0 -0 60 0 {
lab=B}
N -70 60 0 60 {
lab=D}
N -70 -60 0 -60 {
lab=S}
C {devices/iopin.sym} -70 60 0 1 {name=p1 lab=D}
C {devices/iopin.sym} -70 0 0 1 {name=p2 lab=G}
C {devices/iopin.sym} -70 -60 0 1 {name=p3 lab=S}
C {devices/iopin.sym} 60 0 0 0 {name=p4 lab=B}
C {sky130_fd_pr/pfet_01v8_lvt_nf.sym} -20 0 0 0 {name=M1
L=l
W=w
nf=nf
mult=1
ad="'int((nf+1)/2) * W * 0.29u'" 
pd="'2*int((nf+1)/2) * (W + 0.29u)'"
as="'int((nf+2)/2) * W * 0.29u'" 
ps="'2*int((nf+2)/2) * (W + 0.29u)'"
nrd="'0.29u*nf / W'" nrs="'0.29u*nf / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=M
}
