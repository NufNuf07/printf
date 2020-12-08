# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: visamiez <visamiez@sutdent.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 14:54:48 by visamiez          #+#    #+#              #
#    Updated: 2020/12/08 14:54:52 by visamiez         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

LIBFT = ./libft/libft.a

N_TEMP = temp.a

NAME = libftprintf.a

SRCS =  ft_printf.c \
		sources/ft_parse.c \
		sources/ft_width.c \
		sources/ft_u_itoa.c \
		sources/ft_ull_base.c \
		sources/ft_putchar.c \
		sources/ft_str_tolower.c \
		sources/ft_putstrprec.c \
		sources/ft_string.c \
		sources/ft_char.c \
		sources/ft_pointer.c \
		sources/ft_int.c \
		sources/ft_uint.c \
		sources/ft_percent.c \
		sources/ft_hexa.c \
		sources/ft_flags.c 
		
SURPL_O = 	ft_width.o \
			ft_parse.o \
			ft_width.o \
			ft_u_itoa.o \
			ft_ull_base.o \
			ft_putchar.o \
			ft_str_tolower.o \
			ft_putstrprec.o \
			ft_string.o \
			ft_char.o \
			ft_pointer.o \
			ft_int.o \
			ft_uint.o \
			ft_percent.o \
			ft_hexa.o \
			ft_flags.o  

CC = gcc

FLAGS = -c -Wall -Wextra -Werror

INCLUDES = -I./includes

OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	$(MAKE) bonus -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(FLAGS) $(INCLUDES) $(SRCS)
	ar -rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
	$(MAKE) clean -C ./libft
	rm -rf $(SURPL_O) 
	rm -rf $(OBJS)

fclean : clean
	$(MAKE) fclean -C ./libft
	rm -rf $(NAME)

re : fclean all
