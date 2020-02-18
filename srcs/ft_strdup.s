# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alesanto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/18 20:16:40 by alesanto          #+#    #+#              #
#    Updated: 2020/02/18 20:49:48 by alesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global			_ft_strdup
				section			.text

				extern			_ft_strlen
				extern  _malloc
 				extern			_ft_strcpy
 _ft_strdup:
		 		call _ft_strlen	
 				push			rdi			
 				inc				rax			
 				mov				rdi, rax
_use_malloc:				
				call	_malloc
 				cmp				rax, 0		
 				jle				errormalloc
		 		pop				rdi			
 				mov				rsi, rdi
 				mov				rdi, rax
 				call _ft_strcpy
 				ret
 errormalloc:
 				xor				rax, rax	
 				ret
