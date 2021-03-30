##
## Makefile for B-ASM-400-LYN-4-1-bsasmminilibc-charles.mahouve in /Users/charlesvictormahouve/delivery/B-ASM-400-LYN-4-1-bsasmminilibc-charles.mahouve
##
## Made by charles mahouve
## Login   <charles.mahouve>
##
## Started on  Tue Feb 16 3:31:51 PM 2021 charles mahouve
## Last update Mon Feb 21 4:43:42 PM 2021 charles mahouve
##

AS		= nasm
ASFLAGS		= -f elf64

CC		= ld
CFLAGS		= -fPIC -shared

RM		= rm -f

NAME		= libasm.so

SRCS_DIR	= ./
SRCS_FILES	= strlen.asm		\
		  strcmp.asm		\
		  strncmp.asm		\
		  strchr.asm		\
		  memcpy.asm		\
		  memset.asm		\
		  rindex.asm		\
		  strpbrk.asm		\
		  strcspn.asm		\
		  strcasecmp.asm	\
		  strstr.asm		\
		  memmove.asm

SRCS		= $(addprefix $(SRCS_DIR), $(SRCS_FILES))

OBJS		= $(SRCS:.asm=.o)


all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re