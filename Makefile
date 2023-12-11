# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lsaumon <lsaumon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/11 12:54:16 by lsaumon           #+#    #+#              #
#    Updated: 2023/12/11 13:08:48 by lsaumon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INCLUDES = -I/usr/solong/MLX42/include/MLX42 -Imlx

SRCS =	so_long_win.c \
		

OBJS =	${SRCS:.c=.o}

CC =	cc

CFLAGS =	-Wall -Wextra -Werror

RM =	rm -f

AR =	ar rcs

NAME =	so_long

all:	${NAME}

${NAME}:	${OBJS}
		${AR} ${NAME} ${OBJS}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean ${NAME}

bonus : ${OBJS}
	${AR} ${NAME} ${OBJS}

.PHONY: all clean fclean re