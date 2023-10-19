NAME= libftprintf.a
OBJS_PATH= ./objects

LIBFT = /libft/libft.a
LIBFTDIR = libft/
SRCS = ft_printf.c
OBJS = $(SRCS:.c =.o)
HEADER = ft_printf.h
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
COMP = cc


all: $(LIBFT) $(NAME)

$(OBJS_PATH):
	@echo "==================CREATING OBJETS FOLDER=====================" 
	@mkdir -p $@


$(LIBFT):
	@echo "==================COMPILING LIBFT LIBRARY===================="
	@make -C $(LIBFTDIR)

$(OBJS_PATH)/%.o: %.c
	echo "=======================DEPLOY OBJS==========================="
	$(COMP) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS_PATH)
	ar rcs $(NAME) $(OBJS)

.PHONY: all clean fclean re
