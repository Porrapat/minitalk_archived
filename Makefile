# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppetchda <ppetchda@student.42bangkok.com>  +#+  +:+       +#+         #
#                                               +#+#+#+#+#+     +#+            #
#    Created: 2022/03/13 20:13:59 by ppetchda          #+#    #+#              #
#    Updated: 2022/03/13 20:18:35 by ppetchda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = server.c client.c ft_utils.c ft_utils_2.c
OBJS = $(SRCS:.c=.o)

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror

all: server client

bonus: server client

server:
	$(CC) $(CC_FLAGS) server.c ft_utils.c ft_utils_2.c -o $@

client:
	$(CC) $(CC_FLAGS) client.c ft_utils.c ft_utils_2.c -o $@

clean:
	rm -f $(OBJS)
	
fclean: clean
	rm -f server client

re: fclean all

.PHONY: all bonus clean fclean re
