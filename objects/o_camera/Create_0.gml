/// @description - Camera Object

view_width = 1920 / 3
view_height = 1080 / 3

window_scale = 2
vW = view_width * window_scale
vH = view_height * window_scale

window_set_size(vW,vH)
alarm[0]=1;

surface_resize(application_surface,vW,vH)