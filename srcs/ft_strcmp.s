# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 18:19:20 by alesanto          #+#    #+#              #
#    Updated: 2020/03/01 13:37:59 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global			_ft_strcmp
			section			.text

_ft_strcmp:
			mov				rax, -1
start:		
			inc				rax
			cmp				byte [rsi + rax], 0
			je				isdiff
			cmp				byte [rdi + rax], 0
			je				diff
			mov				bl, byte[rdi + rax]
			mov				dl, byte[rdi + rax]
			cmp				bl, dl 
			jne				diff
			jmp				start

isdiff
			cmp				byte [rdi + rax], 0
			je				nodiff
			jmp				diff

diff:
			mov				dl, byte[rdi + rax]
			sub				dl, byte[rsi + rax]
			cmp				dl, 0
			jl				lessdiff
			mov				rax, 1
			jmp				return
nodiff:
			mov				rax, 0
			jmp				return
lessdiff:
			mov				rax, -1 
			jmp				return
return:
			ret
