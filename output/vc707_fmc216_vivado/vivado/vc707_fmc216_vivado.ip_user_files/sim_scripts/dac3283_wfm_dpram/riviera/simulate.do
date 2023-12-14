onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dac3283_wfm_dpram -L xpm -L blk_mem_gen_v8_4_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dac3283_wfm_dpram xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {dac3283_wfm_dpram.udo}

run -all

endsim

quit -force
