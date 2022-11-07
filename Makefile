# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marmonte <marmonte@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/31 17:18:18 by marmonte          #+#    #+#              #
#    Updated: 2022/10/31 17:18:18 by marmonte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror -I .

RM = rm -f

SRC = $(wildcard *.c)

OBJS = $(SRC:.c=.o)

#B = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
#ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

#B = $(wildcard *.c) //nao usar *.c

B_OBJS = $(B:.c=.o)

all:	$(NAME)

bonus:	$(B_OBJS)
			ar rcs $(NAME) $(B_OBJS)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS) $(B_OBJS)

fclean:	clean
			$(RM) $(NAME)

re:	fclean $(NAME)

#so:
#$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
#gcc -nostartfiles -shared -o libft.so $(OBJS)