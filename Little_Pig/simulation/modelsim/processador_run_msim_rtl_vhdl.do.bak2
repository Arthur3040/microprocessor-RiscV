transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/unidade_controle.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/ULA.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/rom.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/Reg.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/processador.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/pc.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/mux_2x1.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/maq_estados.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/extensor_sinal.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/banco_registradores.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Little_Pig/processador_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  processador_tb

add wave *
view structure
view signals
run -all
