/// @description Shaders

shader_set(Bloom);

shader_set_uniform_f(handler,value);
draw_surface(application_surface,0,0);

shader_reset();


//Draw Version String
draw_sprite(TechDemo,0,1060,690);
