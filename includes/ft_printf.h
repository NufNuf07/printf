/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: visamiez <visamiez@sutdent.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/08 14:34:20 by visamiez          #+#    #+#             */
/*   Updated: 2020/12/08 14:34:28 by visamiez         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "../libft/libft.h"
# include <stdarg.h>

typedef	struct		s_flags
{
	int				already_print;
	int				type;
	int				width;
	int				minus;
	int				zero;
	int				dot;
	int				star;
}					t_flags;

int					ft_printf(const char *str, ...);
int					ft_is_in_type_list(int c);
int					ft_is_in_flags_list(int c);
int					ft_parse(int c, t_flags flags, va_list args);
int					ft_width(int width, int minus, int has_zero);
int					ft_putstrprec(char *str, int prec);
int					ft_char(char c, t_flags flags);
int					ft_string(char *str, t_flags flags);
int					ft_int(int i, t_flags flags);
int					ft_percent(t_flags flags);
int					ft_hexa(unsigned int ui, int lower, t_flags flags);
int					ft_uint(unsigned int unsi, t_flags flags);
int					ft_flag_dot(const char *save, int start,
					t_flags *flags, va_list args);
int					ft_putchar(int c);
int					ft_pointer(unsigned long long pointer, t_flags flags);

char				*ft_ull_base(unsigned long long ull, int base);
char				*ft_u_itoa(unsigned int n);
char				*ft_str_tolower(char *str);

t_flags				ft_flag_minus(t_flags flags);
t_flags				ft_flag_width(va_list args, t_flags flags);
t_flags				ft_flag_digit(char c, t_flags flags);

#endif
