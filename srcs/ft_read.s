# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 19:43:59 by alesanto          #+#    #+#              #
#    Updated: 2020/03/01 13:41:53 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global			_ft_read
			section			.text

_ft_read:					
			mov				rax, 0x2000003
			syscall
			jc				error
			ret
error:
			mov			 	rax, -1
			ret
