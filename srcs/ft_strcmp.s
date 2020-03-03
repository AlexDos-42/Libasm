# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 18:19:20 by alesanto          #+#    #+#              #
#    Updated: 2020/03/01 14:18:02 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global			_ft_strcmp
			section			.text

_ft_strcmp:
		mov		rcx, 0
loop:
		mov		rax, 0
		mov		al, [rdi]
		mov		cl, [rsi]
		inc		rdi
		inc		rsi
		sub		rax, rcx
		jz		loop
end:
		ret
