# AsposeThreeDCloud::ObjSaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**verbose** | **BOOLEAN** | Gets or sets whether generate comments for each section. | [optional] 
**serialize_w** | **BOOLEAN** | Gets or sets whether serialize W component in model&#39;s vertex position. | [optional] 
**enable_materials** | **BOOLEAN** | Gets or sets whether import/export materials for each object. | [optional] 
**flip_coordinate_system** | **BOOLEAN** | Gets or sets whether flip coordinate system of control points/normal during importing/exporting. | [optional] 


