onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_compiler_0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_0.udo}

run -all

quit -force
