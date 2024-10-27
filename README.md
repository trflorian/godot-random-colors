# Random Colors in Godot

## Random Colors from RGB

A simple way to generate random colors in Godot is using random red, green and blue values.

```
func _generate_random_rgb_color() -> Color:
	return Color(
		randf(), # RED
		randf(), # GREEN
		randf(), # BLUE
	)
```

![image](https://github.com/user-attachments/assets/8934111b-83d6-44ae-a3ed-193a5978832e)


## Random Colors from HSV

Using the HSV color space, you have more fine-grained control over the color. The hue, saturation and value can be controlled independently.

```
func _generate_random_hsv_color() -> Color:
	return Color.from_hsv(
		randf_range(0.25, 0.45), # HUE
		randf_range(0.2, 0.6), # SATURATION
		randf_range(0.9, 1.0), # BRIGHTNESS
	)
```

![image](https://github.com/user-attachments/assets/610a97d7-8368-4f97-bb03-f3f0f4600ea3)
