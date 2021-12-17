
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /home/MSUCAP/tanvir.arafin/pdk/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /openlane/designs/RISC_SPM/runs/RUN_2021.12.08_16.43.47/results/routing/31-RISC_SPM.def
}
load RISC_SPM -dereference
cd /openlane/designs/RISC_SPM/runs/RUN_2021.12.08_16.43.47/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /openlane/designs/RISC_SPM/runs/RUN_2021.12.08_16.43.47/results/magic/RISC_SPM.spice RISC_SPM.ext
feedback save /openlane/designs/RISC_SPM/runs/RUN_2021.12.08_16.43.47/logs/magic/44-magic_ext2spice.feedback.txt
# exec cp RISC_SPM.spice /openlane/designs/RISC_SPM/runs/RUN_2021.12.08_16.43.47/results/magic/RISC_SPM.spice

