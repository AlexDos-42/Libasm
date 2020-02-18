# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 14:16:19 by alesanto          #+#    #+#              #
#    Updated: 2020/02/17 17:32:26 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global			_ft_strlen
			section			.text

_ft_strlen:
			mov				rax, -1 

start:
			inc				rax
			cmp				byte [rdi + rax], 0
			jne				start
return:
			ret
