onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dac3283_wfm_dpram_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dac3283_wfm_dpram.udo}

run -all

quit -force
