v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -20 20 -20 {lab=#net1}
N -110 10 -110 50 {lab=GND}
N -160 -20 -110 -20 {lab=GND}
N -160 -20 -160 50 {lab=GND}
N -160 50 -110 50 {lab=GND}
N 60 10 60 50 {lab=GND}
N -110 50 60 50 {lab=GND}
N 60 -20 130 -20 {lab=GND}
N 130 -20 130 50 {lab=GND}
N -110 -90 -110 -50 {lab=#net1}
N -300 -80 -300 -30 {lab=#net1}
N -300 -90 -110 -90 {lab=#net1}
N -300 -90 -300 -80 {lab=#net1}
N -110 -90 -30 -90 {lab=#net1}
N -30 -90 -30 -20 {lab=#net1}
N -300 30 -300 50 {lab=GND}
N -300 50 -160 50 {lab=GND}
N -90 50 -90 70 {lab=GND}
N 200 20 200 50 {lab=GND}
N 200 -90 200 -40 {lab=#net2}
N 60 -90 200 -90 {lab=#net2}
N 60 -90 60 -50 {lab=#net2}
N 60 50 200 50 {lab=GND}
C {isource.sym} -300 0 2 0 {name=Iin value=50u}
C {gnd.sym} -90 70 0 0 {name=l1 lab=GND}
C {vsource.sym} 200 -10 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {devices/code.sym} -580 -40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -550 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
OP
DC Vds 0 1.8 0.05 
PLOT abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 -20 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -90 -20 2 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
