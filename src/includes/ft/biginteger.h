/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fake_file_name (file name is useless too)          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: 42header-remover <whatever@example.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 1970/01/01 00:00:00 by VCS handles       #+#    #+#             */
/*   Updated: 1970/01/01 00:00:00 by file history     ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef BIGINTEGER_H
# define BIGINTEGER_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

typedef struct s_biginteger	t_biginteger;

t_biginteger				*g_biginteger_one;
t_biginteger				*g_biginteger_zero;
t_biginteger				*g_biginteger_ten;

t_biginteger	*new_biginteger(int32_t value);

t_biginteger	*new_biginteger_add(t_biginteger *lhs, t_biginteger *rhs);
t_biginteger	*new_biginteger_sub(t_biginteger *lhs, t_biginteger *rhs);
t_biginteger	*new_biginteger_mul(t_biginteger *lhs, t_biginteger *rhs);
t_biginteger	*new_biginteger_div(t_biginteger *lhs, t_biginteger *rhs);
t_biginteger	*new_biginteger_mod(t_biginteger *lhs, t_biginteger *rhs);
t_biginteger	*new_biginteger_sum(t_biginteger **array, size_t length);
t_biginteger	*new_biginteger_product(t_biginteger **array, size_t length);

t_biginteger	*delete_biginteger(t_biginteger *self);

#endif
