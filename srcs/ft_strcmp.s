# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 18:19:20 by alesanto          #+#    #+#              #
#    Updated: 2020/03/06 14:31:04 by alesanto         ###   ########.fr        #
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
			movzx			rcx, byte[rsi + rax]
			movzx			rbx, byte[rdi + rax]
			cmp				rbx, rcx
			jne				diff
			jmp				start
isdiff:
			cmp				byte [rdi + rax], 0
			je				nodiff
			jmp				diff
diff:
			movzx			rcx, byte[rsi + rax]
			movzx			rbx, byte[rdi + rax]
			sub				rbx, rcx
			jl				lessdiff
			mov				rax, 1
			ret
lessdiff:
			mov				rax, -1
			ret
nodiff:
			mov				rax, 0
			ret
