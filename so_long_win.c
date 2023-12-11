/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long_win.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lsaumon <lsaumon@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/11 12:45:42 by lsaumon           #+#    #+#             */
/*   Updated: 2023/12/11 14:37:11 by lsaumon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

int	so_long_win(int width, int win_height);

int	main(void)
{
	void	*mlx;
	void	*win;
	int		win_width;
	int		win_height;

	mlx = mlx_init();
	if (!mlx)
		return (1);
	win_width = 512;
	win_height = 512;
	win = mlx_new_window(mlx, win_width, win_height, "Test So_Long");
	if (!win)
	{
		mlx_destroy_display(mlx);
		free(mlx);
		return (1);
	}	
	mlx_loop(mlx);
	return (0);
}
