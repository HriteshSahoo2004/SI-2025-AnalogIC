v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -20 -40 -20 {lab=vip}
N -80 20 -40 20 {lab=vim}
N 0 30 -0 40 {lab=vom}
N 0 40 90 40 {lab=vom}
N -0 -50 90 -50 {lab=vop}
N 0 -50 0 -30 {lab=vop}
C {vcvs.sym} 0 0 0 0 {name=E1 value=1000
}
C {iopin.sym} 90 -50 0 0 {name=p1 lab=vop}
C {iopin.sym} 90 40 0 0 {name=p2 lab=vom}
C {iopin.sym} -80 20 2 0 {name=p4 lab=vim}
C {iopin.sym} -90 -20 2 0 {name=p5 lab=vip
}
