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

#ifndef MAIN_H
# define MAIN_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

typedef struct s_biginteger_part {
	size_t		length;
	size_t		capacity;
	uint32_t	number[];
}	t_biginteger_part;

struct s_biginteger {
	bool				is_negative:1;
	bool				is_static:1;
	t_biginteger_part	*part;
};

#endif
