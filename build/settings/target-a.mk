TARGET := libft_$(NAME).a

$(TARGET): $(OBJS)
	$(Q)$(AR) cr $@ $(OBJS)
