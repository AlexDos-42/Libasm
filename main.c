/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alesanto <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/17 17:00:53 by alesanto          #+#    #+#             */
/*   Updated: 2020/02/18 20:52:46 by alesanto         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>

size_t	ft_strlen(const char *str);
char *ft_strcpy(char *dst, char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_read(int fd, void *buf, size_t nbyte);
ssize_t	ft_write(int fd, const void *buf, size_t nbyte);
char	*ft_strdup(const char *str);


int		main(int argc, char **argv)
{
	char *str;

	printf("### FT_STRLEN ###\n");
	str = "123456789";
	printf("   strlen: %d\n", (int)strlen(str));
	printf("ft_strlen: %d\n", (int)ft_strlen(str));
	
	char *str1;
	char *str2;
	char dest[8];
	char *src;

	src = "bonjour";
	printf("\n\n");
	printf("### FT_STRCPY ###\n");
	str1 = strdup(dest);
	str2 = strdup(dest);
	str1 = strcpy(str1, src);
	str2 = ft_strcpy(str2, src);
	printf("   strcpy: %s\n", str1);
	printf("ft_strcpy: %s\n", str2);

	printf("\n\n");
	char *s1;
	char *s2;

	s1 = "bonjour";
	s2 = "bonjour";
	printf("### FT_STRCMP ###\n");
	printf("   strcmp: %d\n", strcmp(s1, s2));
	printf("ft_strcmp: %d\n", ft_strcmp(s1, s2));

	int		fd;
	int		fd1;
	printf("\n\n");
	printf("### FT_WRITE ###\n");
	printf(" = write: %zd\n", write(1, s1, strlen(s1)));
	printf(" = ft_write: %zd\n", ft_write(1, s1, strlen(s1)));
	close(fd);
	close(fd1);

	printf("\n\n");
	printf("### FT_READ ###\n");
	char	buffer[33];
	char	buffer1[33];
	int		r;
	int		r1;

	fd = open(argv[1], O_RDONLY);
	fd1 = open(argv[1], O_RDONLY);
	r = read(fd, buffer, 10);
	r1 = ft_read(fd1, buffer1, 10);
	buffer[r] = 0;
	buffer1[r1] = 0;
	printf("read fd : %d, r : %d, buffer : \n%s\n", fd, r, buffer);
	printf("ft_read fd1 : %d, r1 : %d, buffer1 : \n%s\n", fd1, r1, buffer1);
	r = read(fd, buffer, 10);
	r1 = ft_read(fd1, buffer1, 10);
	buffer[r] = 0;
	buffer1[r1] = 0;
	printf("read fd : %d, r : %d, buffer : \n%s\n", fd, r, buffer);
	printf("ft_read fd1 : %d, r1 : %d, buffer1 : \n%s\n", fd1, r1, buffer1);
	r = read(fd, buffer, 10);
	r1 = ft_read(fd1, buffer1, 10);
	buffer[r] = 0;
	buffer1[r1] = 0;
	printf("read fd : %d, r : %d, buffer : \n%s\n", fd, r, buffer);
	printf("ft_read fd1 : %d, r1 : %d, buffer1 : \n%s\n", fd1, r1, buffer1);
	r = read(fd, buffer, 10);
	r1 = ft_read(fd1, buffer1, 10);
	buffer[r] = 0;
	buffer1[r1] = 0;
	printf("read fd : %d, r : %d, buffer : \n%s\n", fd, r, buffer);
	printf("ft_read fd1 : %d, r1 : %d, buffer1 : \n%s\n", fd1, r1, buffer1);

	printf("\n\n");
	printf("### FT_STRDUP ###\n");
	s1 = strdup(s1);
	s1 = ft_strdup(s1);
	printf("   strdup: %s\n", s1);
	printf("ft_strdup: %s\n", s1);
	return (0);
}
