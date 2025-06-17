.TITLE RC Step Input Testbench

.PARAM vdd_var=1

C1    vin    vout    1p
R1    vout   GND     1k

Vsin  vin    GND     0 PULSE(0 vdd_var 0.5n 1n 1n 10n 20n)

.SAVE ALL
.OP
.TRAN 10p 40n

.GLOBAL GND
.END
