# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lsaumon <lsaumon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/27 10:22:45 by lsaumon           #+#    #+#              #
#    Updated: 2023/11/27 10:23:20 by lsaumon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCS =

OBJS =	${SRCS:.c=.o}

CC =	cc
CFLAGS =	-Wall -Wextra -Werror
RM =	rm -f
AR =	ar rcs
NAME =

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