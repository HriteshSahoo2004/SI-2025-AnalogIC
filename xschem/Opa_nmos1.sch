v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 20 370 40 {lab=AVSS}
N 330 -10 370 -10 {lab=AVSS}
N 330 -10 330 40 {lab=AVSS}
N 260 40 370 40 {lab=AVSS}
N 370 -70 370 -40 {lab=ib5u}
N 370 -70 440 -70 {lab=ib5u}
N 440 -70 440 -10 {lab=ib5u}
N 250 -70 370 -70 {lab=ib5u}
N 620 20 620 40 {lab=AVSS}
N 370 40 620 40 {lab=AVSS}
N 620 -10 690 -10 {lab=AVSS}
N 690 -10 690 40 {lab=AVSS}
N 620 40 690 40 {lab=AVSS}
N 520 -250 520 -210 {lab=#net1}
N 740 -250 740 -220 {lab=#net1}
N 520 -210 620 -210 {lab=#net1}
N 740 -480 740 -310 {lab=vout}
N 470 -510 520 -510 {lab=AVDD}
N 470 -590 470 -510 {lab=AVDD}
N 520 -590 520 -540 {lab=AVDD}
N 740 -590 740 -540 {lab=AVDD}
N 740 -380 810 -380 {lab=vout}
N 620 -210 740 -210 {lab=#net1}
N 740 -220 740 -210 {lab=#net1}
N 410 -10 580 -10 {lab=ib5u}
N 380 -280 480 -280 {lab=vip}
N 780 -280 890 -280 {lab=vim}
N 620 -210 620 -40 {lab=#net1}
N 520 -440 660 -440 {lab=vom}
N 520 -480 520 -310 {lab=vom}
N 560 -510 700 -510 {lab=vom}
N 660 -510 660 -440 {lab=vom}
N 380 -590 520 -590 {lab=AVDD}
N 520 -590 810 -590 {lab=AVDD}
N 810 -590 810 -510 {lab=AVDD}
N 740 -510 810 -510 {lab=AVDD}
N 520 -280 570 -280 {lab=#net1}
N 570 -280 570 -210 {lab=#net1}
N 700 -280 740 -280 {lab=#net1}
N 700 -280 700 -210 {lab=#net1}
C {iopin.sym} 380 -280 2 0 {name=p1 lab=vip}
C {iopin.sym} 890 -280 2 1 {name=p3 lab=vim}
C {iopin.sym} 380 -590 2 0 {name=p5 lab=AVDD}
C {iopin.sym} 260 40 2 0 {name=p6 lab=AVSS}
C {iopin.sym} 810 -380 0 0 {name=p7 lab=vout
}
C {iopin.sym} 250 -70 2 0 {name=p8 lab=ib5u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 500 -280 0 0 {name=M4
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 720 -510 0 0 {name=M11
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 -10 0 1 {name=M2
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -10 0 0 {name=M1
L=1
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 760 -280 0 1 {name=M3
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 540 -510 0 1 {name=M5
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=vom}
