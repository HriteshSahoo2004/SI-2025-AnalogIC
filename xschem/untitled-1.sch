v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 -40 -270 -30 {lab=#net1}
N 240 -40 240 -30 {lab=vop}
N 50 -40 50 -20 {lab=#net2}
N -270 30 -270 40 {lab=GND}
N 240 30 240 40 {lab=xxx}
N -270 -90 -270 -30 {lab=#net1}
N -270 -90 -120 -90 {lab=#net1}
N -60 -90 50 -90 {lab=#net2}
N 50 -90 50 -40 {lab=#net2}
N 50 -90 200 -90 {lab=#net2}
N 200 -90 200 -20 {lab=#net2}
N -270 30 -270 70 {lab=GND}
N -270 70 50 70 {lab=GND}
N 50 20 50 70 {lab=GND}
N 200 20 200 70 {lab=GND}
N 50 70 200 70 {lab=GND}
N 50 70 50 120 {lab=GND}
N -410 -20 -310 -20 {lab=vip}
N -410 20 -310 20 {lab=vim}
N 240 -50 240 -30 {lab=vop}
N 240 -50 350 -50 {lab=vop}
N 240 40 240 50 {lab=xxx}
N 240 50 350 50 {lab=xxx}
C {vcvs.sym} -270 0 0 0 {name=E1 value=1000}
C {vcvs.sym} 240 0 0 0 {name=E2 value=1}
C {res.sym} -90 -90 1 0 {name=R1
value=15.9k
footprint=1206
device=resistor
m=1}
C {capa.sym} 50 -10 0 0 {name=C1
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 50 120 0 0 {name=l1 lab=GND}
C {iopin.sym} -410 -20 2 0 {name=p1 lab=vip}
C {iopin.sym} -410 20 2 0 {name=p3 lab=vim}
C {iopin.sym} 350 -50 0 0 {name=p2 lab=vop}
C {iopin.sym} 350 50 0 0 {name=p4 lab=vom}
