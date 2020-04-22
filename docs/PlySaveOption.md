# AsposeThreeDCloud::PlySaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**flip_coordinate** | **BOOLEAN** | Flip the coordinate while saving the scene, default value is true. | [optional] 
**vertex_element** | **String** | The element name for the vertex data, default value is \&quot;vertex\&quot;. | [optional] 
**position_components** | **Array&lt;String&gt;** | The component names for position data, default value is (\&quot;x\&quot;, \&quot;y\&quot;, \&quot;z\&quot;) | [optional] 
**face_element** | **String** | The element name for the face data, default value is face. | [optional] 
**face_property** | **String** | The property name for the face data, default value is vertex_index. | [optional] 
**file_content_type** | [**FileContentType**](FileContentType.md) | Gets or sets  of the FileContent Style. | [optional] 


