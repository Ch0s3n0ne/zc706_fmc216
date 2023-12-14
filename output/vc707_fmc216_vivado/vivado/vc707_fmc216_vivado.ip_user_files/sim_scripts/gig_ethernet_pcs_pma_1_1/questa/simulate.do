onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib gig_ethernet_pcs_pma_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {gig_ethernet_pcs_pma_1.udo}

run -all

quit -force
