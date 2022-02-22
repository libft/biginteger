Q = $(if $(filter 1,$(V) $(VERBOSE)),,@)
colon := :

all:
	$(Q)sh -c "cd build/debug/a && make all"
	$(Q)sh -c "cd build/debug/so && make all"
	$(Q)sh -c "cd build/release/a && make all"
	$(Q)sh -c "cd build/release/so && make all"
clean:
	$(Q)sh -c "cd build/debug/a && make clean"
	$(Q)sh -c "cd build/debug/so && make clean"
	$(Q)sh -c "cd build/release/a && make clean"
	$(Q)sh -c "cd build/release/so && make clean"
	$(Q)sh -c "cd build/debug/test && make clean"
fclean:
	$(Q)sh -c "cd build/debug/a && make fclean"
	$(Q)sh -c "cd build/debug/so && make fclean"
	$(Q)sh -c "cd build/release/a && make fclean"
	$(Q)sh -c "cd build/release/so && make fclean"
	$(Q)sh -c "cd build/debug/test && make fclean"
	$(Q)rm -rf dist
re: fclean all
test:
	$(Q)norminette > /dev/null
dist: test
	$(Q)sh build/scripts/dist.sh
.PHONY: all clean fclean re dist
