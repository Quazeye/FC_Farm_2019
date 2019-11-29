///@description create_crop_type
///@arg growth_stage_duration
///@arg cost

var argNum = argument_count;

if(!ds_exists(ds_crops_types, ds_type_grid))
{
	ds_crops_types = ds_grid_create(argNum, 1);
	var height = 1;
}