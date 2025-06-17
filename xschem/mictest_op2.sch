v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -370 90 -370 140 {lab=GND}
N -70 0 -60 0 {lab=vin2}
N -190 0 -180 0 {lab=vin1}
N -370 0 -370 30 {lab=vnmic}
N -120 0 -70 0 {lab=vin2}
N 20 -190 20 0 {lab=virt}
N 120 -190 170 -190 {lab=vout}
N 20 -190 60 -190 {lab=virt}
N 20 -100 60 -100 {lab=virt}
N 120 -100 170 -100 {lab=vout}
N 50 180 50 220 {lab=GND}
N 340 -70 340 -40 {lab=vout}
N 170 -70 340 -70 {lab=vout}
N 340 20 340 50 {lab=GND}
N -370 0 -300 0 {lab=vnmic}
N -240 0 -190 0 {lab=vin1}
N 170 -190 170 -70 {lab=vout}
N 140 -50 170 -50 {lab=vout}
N 170 -70 170 -50 {lab=vout}
N 140 10 140 80 {lab=GND}
N 50 -40 100 -40 {lab=#net1}
N 50 -40 50 120 {lab=#net1}
N -0 -0 100 -0 {lab=virt}
C {vsource.sym} -370 60 0 0 {name=Vmic value="0 AC 1 " savecurrent=false}
C {res.sym} -270 0 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -150 0 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 140 0 0 {name=l1 lab=GND}
C {res.sym} -30 0 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 90 -100 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 90 -190 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 50 150 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 50 220 0 0 {name=l3 lab=GND}
C {capa.sym} 340 -10 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 50 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -330 0 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -70 0 0 0 {name=p2 sig_type=std_logic lab=vin2
}
C {lab_wire.sym} -190 0 0 0 {name=p3 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 270 -70 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {lab_wire.sym} 20 -40 0 0 {name=p5 sig_type=std_logic lab=virt
}
C {simulator_commands_shown.sym} -820 -480 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
 SAVE ALL
 OP
 WRITE mictest.raw
 SET APPENDWRITE
 AC DEC 100 1 10e6
 WRITE mictest.raw
 **
 MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
 LET vm3db = gain_db - 3.0 
 print vm3db
 MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
 MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
 MEAS AC fmid WHEN vdb(vout)=gain_db
 **Phase Measurement
 LET phase_deg = cph(vout)*180/PI
 MEAS AC phase_zero FIND phase_deg AT=fzero
 MEAS AC phase_pole FIND phase_deg AT=fpole
 MEAS AC phase_mid FIND phase_deg AT=fmid
 **MEAS fzero fpole using phase
 LET phase_zero_ph = phase_mid-45
 MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
 
 TRAN 1u 5m

.ENDC  
"}
C {gnd.sym} 140 80 0 0 {name=l5 lab=GND}
C {vcvs.sym} 140 -20 0 0 {name=E1 value=10000}
