onerror {exit -code 1}
vlib work
vcom -work work TestingGround.vho
vcom -work work GenRegV2_Waveforms_Test.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.GenRegV2_vhd_vec_tst
vcd file -direction TestingGround.msim.vcd
vcd add -internal GenRegV2_vhd_vec_tst/*
vcd add -internal GenRegV2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


