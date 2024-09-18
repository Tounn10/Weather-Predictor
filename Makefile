##
## EPITECH PROJECT, 2019
## minishell1
## File description:
## Makefile
##

CC	=	go build

CPP_FLAGS	=	-Wall -Werror -Wextra -std=c++20 -g3

SRC	=	src/main.go

OBJ	=	$(SRC:.c=.o)

BINARY	=	groundhog

all:	$(BINARY)

$(BINARY):	$(OBJ)
	@$(CC) -o $(BINARY) $(OBJ)

clean:
	$(RM) $(BINARY)

fclean: clean
	@rm -f $(BINARY)

re:	fclean all

.PHONY: all clean fclean re
