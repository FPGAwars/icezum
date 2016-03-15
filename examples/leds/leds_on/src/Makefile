#-----------------------------------------------------
#-- Project 1
#-----------------------------------------------------
NAME = leds_on
DEPS =

#------------- Simulation of project 1 ---------
sim: $(NAME)_tb.vcd
	gtkwave $< $(<:.vcd=.gtkw) &

#-- set the dependencies for simulation
$(NAME)_tb.vcd: $(NAME).v $(DEPS) $(NAME)_tb.v

#---- Synthesis of project 1 ------------------
sint: $(NAME).bin

#-- Set the dependencies for synthetization
$(NAME).blif: $(NAME).v $(DEPS)

#-- Set the dependencies for the place and route
$(NAME).asc: $(NAME).blif $(NAME).pcf

#---- Upload into FPGA of project 1 ------
prog: $(NAME).bin
	iceprog $<

# --- Time report
time: $(NAME).rpt


#--------------------------------
#-- General Compilation rules
#--------------------------------

.SUFFIXES: .asc .bin .blif .v .vcd .rpt

# -- Rule for generating time reports
.asc.rpt:
	icetime -d hx1k -mtr $@ $^

#-- Rule for generating the simulations
.v.vcd:
		iverilog $^ -o $(@:.vcd=.out)
		./$(@:.vcd=.out)

#-- Rule to perform the synthesis
.v.blif:
	yosys -p "synth_ice40 -blif $@" $^

#-- Rule to perform the place and route
#-- The .pcf file should have the same name than the .blif file
.blif.asc:
	arachne-pnr -d 1k -p $(@:.asc=.pcf) $< -o $@

#-- Rule to obtain the .bin bitstream from the .txt ascii files
.asc.bin:
	icepack $< $@

#-- Clean the project
clean:
	rm -f *.bin *.asc *.blif *.out *.vcd examples/*~

.PHONY: all clean
