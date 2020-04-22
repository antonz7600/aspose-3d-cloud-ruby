# AsposeThreeDCloud::Discreet3DSSaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**export_light** | **BOOLEAN** | Gets or sets whether export all lights in the scene. | [optional] 
**export_camera** | **BOOLEAN** | Gets or sets whether export all cameras in the scene | [optional] 
**duplicated_name_separator** | **String** | The separator between object&#39;s name and the duplicated counter, default value is \&quot;_\&quot;. When scene contains objects that use the same name, Aspose.3D 3DS exporter will generate a different name for the object. For example there&#39;s two nodes named \&quot;Box\&quot;, the first node will have a name \&quot;Box\&quot;, and the second node will get a new name \&quot;Box_2\&quot; using the default configuration | [optional] 
**duplicated_name_counter_base** | **Integer** | The counter used by generating new name for duplicated names | [optional] 
**duplicated_name_counter_format** | **String** | The format of the duplicated counter, default value is empty string. | [optional] 
**master_scale** | **Float** | Gets or sets the master scale used in exporting. | [optional] 
**gamma_corrected_color** | **BOOLEAN** | Gets or sets the GammaCorrectedColor. | [optional] 
**flip_coordinate_system** | **BOOLEAN** | Gets or sets flip coordinate system of control points/normal during importing/exporting.. | [optional] 
**high_precise_color** | **BOOLEAN** | Gets or sets the HighPreciseColor. | [optional] 


