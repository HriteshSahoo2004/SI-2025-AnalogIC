v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -670 30 -670 80 {lab=GND}
N -370 -60 -360 -60 {lab=vin2}
N -490 -60 -480 -60 {lab=vin1}
N -670 -60 -670 -30 {lab=vin1}
N -420 -60 -370 -60 {lab=vin2}
N -250 120 -250 160 {lab=GND}
N -670 -60 -600 -60 {lab=vin1}
N -540 -60 -490 -60 {lab=vin1}
N -250 -100 -200 -100 {lab=#net1}
N -250 -100 -250 -60 {lab=#net1}
N -300 -60 -250 -60 {lab=#net1}
N -200 -60 -200 60 {lab=vcm}
N -250 60 -200 60 {lab=vcm}
N -600 -60 -540 -60 {lab=vin1}
N -240 -160 -240 -100 {lab=#net1}
N -240 -160 -180 -160 {lab=#net1}
N -120 -160 -20 -160 {lab=vout}
N -20 -160 -20 -80 {lab=vout}
N -20 -80 30 -80 {lab=vout}
N -120 -80 -20 -80 {lab=vout}
N -200 -100 -180 -100 {lab=#net1}
N -200 -60 -180 -60 {lab=vcm}
N -140 -40 -140 20 {lab=GND}
C {vsource.sym} -670 0 0 0 {name=Vmic value="0 AC 1 " savecurrent=false}
C {capa.sym} -450 -60 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -670 80 0 0 {name=l1 lab=GND}
C {res.sym} -330 -60 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -150 -160 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -250 90 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -250 160 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -370 -60 0 0 {name=p2 sig_type=std_logic lab=vin2
}
C {lab_wire.sym} -490 -60 0 0 {name=p3 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 30 -80 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {lab_wire.sym} -200 20 0 0 {name=p6 sig_type=std_logic lab=vcm
}
C {gnd.sym} -140 20 0 0 {name=l5 lab=GND}
C {simulator_commands_shown.sym} 80 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
 SAVE ALL
 OP
 WRITE mictest.raw
 SET APPENDWRITE
 AC DEC 100 0.1 10e6
 plot vdb(vout)
 MEAS AC ganin_db MAX  vdb(vout) FROM=1 TO=10e6
 print gain_db
 WRITE mictest.raw
.ENDC  
"}
C {Buf_Opamp.sym} -130 60 0 0 {name=x2}
