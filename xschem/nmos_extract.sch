v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -90 -80 {lab=vgds}
N -130 -140 -130 -80 {lab=vgds}
N -130 -140 -50 -140 {lab=vgds}
N -50 -140 -50 -110 {lab=vgds}
N -260 -140 -260 -110 {lab=vgds}
N -260 -140 -130 -140 {lab=vgds}
N -260 -50 -260 30 {lab=GND}
N -260 30 -50 30 {lab=GND}
N -170 40 -170 60 {lab=GND}
N -170 30 -170 40 {lab=GND}
N -50 -80 30 -80 {lab=GND}
N 30 -80 30 30 {lab=GND}
N -50 30 30 30 {lab=GND}
N -50 -50 -50 -30 {lab=#net1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -70 -80 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -260 -80 0 0 {name=Vds value=1 savecurrent=false}
C {simulator_commands_shown.sym} -670 -290 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
OP
write nmos_extract.raw
SET APPENDWRITE
DC Vds 0 1.8 0.05 TEMP -40 120 20
write nmos_extract.raw
PLOT log(abs(vds#branch)
**
PLOT sqrt(2*abs(Vds#branch))
PLOT abs(Vds#branch)
.ENDC
"}
C {devices/code.sym} -550 -40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_pin.sym} -210 -140 2 0 {name=p1 sig_type=std_logic lab=vgds}
C {gnd.sym} -170 60 0 0 {name=l1 lab=GND}
C {vsource.sym} -50 0 0 0 {name=Vsb value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 1970 -840 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
