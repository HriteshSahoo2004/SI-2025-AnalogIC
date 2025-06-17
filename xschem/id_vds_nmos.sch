v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -10 -200 -0 {lab=vg}
N -200 -10 -80 -10 {lab=vg}
N -40 -40 170 -40 {lab=vd}
N 170 -40 170 -0 {lab=vd}
N -200 60 -200 100 {lab=GND}
N -200 100 170 100 {lab=GND}
N 170 60 170 100 {lab=GND}
N -40 20 -40 100 {lab=GND}
N -40 -10 -20 -10 {lab=GND}
N -20 -10 -20 40 {lab=GND}
N -40 40 -20 40 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -60 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -200 30 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 170 30 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -50 100 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -500 -120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
OP
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.1
.ENDC
"}
C {devices/code.sym} -470 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_pin.sym} -180 -10 2 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_pin.sym} 110 -40 0 0 {name=p2 sig_type=std_logic lab=vd}
