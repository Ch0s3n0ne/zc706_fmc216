onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xcvr_fmc216_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {xcvr_fmc216.udo}

run -all

quit -force
