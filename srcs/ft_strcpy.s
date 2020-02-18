# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 17:04:33 by alesanto          #+#    #+#              #
#    Updated: 2020/02/17 18:18:18 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global			_ft_strcpy
			section			.text
;dst && src //rdi && rsi

_ft_strcpy:
			mov				rax, -1 
			cmp				rsi, 0
			je				return
			xor				rdx, rdx

start:
			inc				rax
			cmp				byte [rsi + rax], 0
			je				return
			mov				dl, byte [rsi + rax]
			mov				byte[rdi + rax], dl
			jmp				start			

return:
			mov				byte [rdi + rax], 0 
			mov				rax, rdi
			ret
