debug_print("Application: " .. get_application_name())
debug_print("Window: " .. get_window_name());

if (get_window_name() == "A Tale in the Desert") then
  set_window_geometry(50, 100, 1280, 1024);
  maximize()
end

if (get_window_name() == "Automato") then
  make_always_on_top()
end
