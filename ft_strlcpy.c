/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: marmonte <marmonte@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/27 12:53:58 by marmonte          #+#    #+#             */
/*   Updated: 2022/10/28 14:29:41 by marmonte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strlcpy(char *dest, char *src, unsigned int n)
{
	unsigned int	i;

	i = 0;
	if (n > 0)
	{
		while (src[i] && i < (n - 1))
		{
			dest[i] = src[i];
			i++;
		}
	}
	return (i);
}
/*
int	main(void)
{
	char	*src = "0123456789";
	char	dest[10];
	
	printf("Dest antes do strlcpy: %s\n", dest);
	memset(dest, '\0', 10);
	strncpy(dest, src, 3);
	printf("Dest depois do strncpy: %s\n", dest);
	ft_strlcpy(dest, src, 11);
	printf("Dest depois do ft_strlcpy: %s", dest);
	return (0);
}
*/