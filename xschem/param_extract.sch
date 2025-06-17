v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -10 -50 -10 {lab=vgds}
N -90 -70 -90 -10 {lab=vgds}
N -90 -70 -10 -70 {lab=vgds}
N -10 -70 -10 -40 {lab=vgds}
N -220 -70 -220 -40 {lab=vgds}
N -220 -70 -90 -70 {lab=vgds}
N -220 20 -220 100 {lab=GND}
N -220 100 -10 100 {lab=GND}
N -130 110 -130 130 {lab=GND}
N -130 100 -130 110 {lab=GND}
N -10 -10 70 -10 {lab=GND}
N 70 -10 70 100 {lab=GND}
N -10 100 70 100 {lab=GND}
N -10 20 -10 40 {lab=#net1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -220 -10 0 0 {name=Vds value=1 savecurrent=false}
C {simulator_commands_shown.sym} -590 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
OP
DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
PLOT abs(vds#branch)
PLOT sqrt(2*abs(vds#branch))
PLOT log(abs(vds#branch))
.ENDC
"}
C {devices/code.sym} -510 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_pin.sym} -170 -70 2 0 {name=p1 sig_type=std_logic lab=vgds}
C {gnd.sym} -130 130 0 0 {name=l1 lab=GND}
C {vsource.sym} -10 70 0 0 {name=Vsb value=0 savecurrent=false}
