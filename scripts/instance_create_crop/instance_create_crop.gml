///@description instance_create_crop
///@arg x
///@arg y
///@arg crop_type

var cs = crops.cellSize;
var xx = argument0 div cs;
var yy = argument1 div cs;

xx *= cs;
yy *= cs;

//Check for soil
var layerID = layer_get_id("T_Soil");
var tilemap_ID = layer_tilemap_get_id(layerID);
var data = tilemap_get_at_pixel(tilemap_ID, argument0, argument1);

if(data == 0)
{
	show_debug_message("There is no soil here.");
	return false;
}
else
{
	show_debug_message("There is soil here.");
}

//Create the instance
var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);

//Give the crop its characteristics
with(inst)
{
	cropType = argument2;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;