# AsposeThreeDCloud::DracoSaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**position_bits** | **Integer** | Quantization bits for position, default value is 14 | [optional] 
**texture_coordinate_bits** | **Integer** | Quantization bits for texture coordinate, default value is 12 | [optional] 
**color_bits** | **Integer** | Quantization bits for vertex color, default value is 10 | [optional] 
**normal_bits** | **Integer** | Quantization bits for normal vectors, default value is 10 | [optional] 
**compression_level** | [**DracoCompressionLevel**](DracoCompressionLevel.md) | Compression level, default value is Aspose.ThreeD.Formats.DracoCompressionLevel.Standard. | [optional] 


