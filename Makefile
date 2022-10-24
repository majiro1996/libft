# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: manujime <manujime@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/21 12:18:06 by manujime          #+#    #+#              #
#    Updated: 2022/10/12 14:21:45 by manujime         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB 	=	ar rcs

CC 		=	gcc
CCFLAGS =	-c -Wall -Wextra -Werror

NAME 	=	libft.a

SRC		=	ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \

BONUS	=	ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstnew_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstsize_bonus.c \

OBJ		= 	$(SRC:.c=.o)

OBONUS 	= 	$(BONUS:.c=.o)

.c.o:
	@$(CC) $(CCFLAGS) -c $< -o $(<:.c=.o)

all:		$(NAME)

$(NAME): 	$(OBJ)
			$(LIB) $(NAME) $(OBJ)

bonus: 		$(OBJ) $(OBONUS)
			$(LIB) $(NAME) $(OBJ) $(OBONUS)

clean:
			rm -f $(OBJ) $(OBONUS)

fclean: 	clean
			rm -f $(NAME)

re: 		fclean all

.PHONY:	clean fclean re all