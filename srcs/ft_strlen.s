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
; Alors notre ft_strlen en C : on met i = -1 ou 0, on incremente tant que str[i] != '\0', ici str c'est rdi
_ft_strlen:
			mov				rax, -1 		; ici rax c'est i, et on l'initie à -1

start:										; la c'est la boucle, en c on utilise while, en asm on jump
			inc				rax			; on incremente rax, i++
			cmp				byte [rdi + rax], 0 	; byte c'est pour checker un seul caractère : est ce que le caractère sur lequel on est == '\0' ?
			jne				start			; si != '\0', on retourne au début de la boucle
return:
			ret				; si == '\0', on retourne : ret = rax 
