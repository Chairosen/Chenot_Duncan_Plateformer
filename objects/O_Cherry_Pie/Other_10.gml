/// @description Detect

if (!instance_exists(O_Cherry) && alarm[2]<=0)
{
	alarm[2] = 180;
	instance_create_layer(x,y,"Enemy",O_Cherry);
}