# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkong <tkong@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/06 12:24:20 by tkong             #+#    #+#              #
#    Updated: 2022/07/06 12:44:51 by tkong            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 
CC			= gcc
CFLAG		= -Wall -Wextra -Werror
OBJFLAG		= -c
ARCH		= ar
ARCHFLAG	= rcs
SRC			= 
SRC_B		= 
OBJ			= $(SRC:.c=.o)
OBJ_B		= $(SRC_B:.c=.o)
INC			= ft_printf.h		\
			  ft_printf_bonus.h
RM			= rm -f

%.o :		%.c
	$(CC) $(CFLAG) $(OBJFLAG) $?

$(NAME) :	$(OBJ)
	$(ARCH) $(ARCHFLAG) $(NAME) $?

all :		$(NAME)

bonus :		$(OBJ_B)
	$(ARCH) $(ARCHFLAG) $(NAME) $?

clean :
	$(RM) $(OBJ) $(OBJ_B)

fclean :	clean
	$(RM) $(NAME)

re :		fclean all

.PHONY :	all bonus clean fclean re
