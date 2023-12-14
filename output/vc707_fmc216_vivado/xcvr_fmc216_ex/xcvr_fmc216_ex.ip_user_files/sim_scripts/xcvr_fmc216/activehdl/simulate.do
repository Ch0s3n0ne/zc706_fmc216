onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xcvr_fmc216 -L xil_defaultlib -L secureip -O5 xil_defaultlib.xcvr_fmc216

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {xcvr_fmc216.udo}

run -all

endsim

quit -force
