#================================
# [Usage]
# For each step, designate followings
#   src_step: Used source files
#   dep_step: Precursor steps
#   out_step: Output files for "make clean"
#   cmd_step: Command to be executed
#================================

STEP_ALL = 1 2

src_1 := src1.sh
dep_1 :=
out_1 := out/out1.txt
cmd_1 := sh src1.sh

src_2 := src2.sh
dep_2 := 1
out_2 := out/out2.txt
cmd_2 := sh src2.sh; echo "finish"

# ===============================================
# end of settings
# ===============================================

VPATH = .make
all: $(STEP_ALL)

define rule_comm
$1: $(src_$1) $(dep_$1) Makefile
	@echo ""
	@echo "STEP $1:"
	$(cmd_$1)
	@mkdir -p $(VPATH)
	@touch $(VPATH)/$1
clean_$1:
	@echo "clean $1:"
	rm -rf $(out_$1)
	@rm -f $(VPATH)/$1
endef

$(foreach i, $(STEP_ALL), $(eval $(call rule_comm,$i)))

clean:
	rm -rf $(foreach i,$(STEP_ALL),$(out_$i))
	@rm -rf $(VPATH)

.PHONY: all clean

