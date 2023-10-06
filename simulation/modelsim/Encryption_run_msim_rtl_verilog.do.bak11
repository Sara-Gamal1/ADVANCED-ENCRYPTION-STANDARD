transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_two.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_thirteen.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_nine.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_inv.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_forteen.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply_eleven.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/multiply.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/MixColumns.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/InvMixColumns.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/shift.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/ShiftRows.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/ShiftRows_inverse.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/inv_sbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/inv_Sub_Bytes.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/sbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/Sub_Bytes.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/Rcon.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/RotWord.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/SubWord.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/KeyExpansion.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/General_KeyExpansion.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/encryption.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/wrapper.v}
vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/decryption.v}

vlog -vlog01compat -work work +incdir+C:/Users/sggln/OneDrive/Documents/Logic_project {C:/Users/sggln/OneDrive/Documents/Logic_project/wrapper_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  wrapper_tb

add wave *
view structure
view signals
run -all
