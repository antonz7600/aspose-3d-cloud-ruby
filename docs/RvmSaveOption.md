# AsposeThreeDCloud::RvmSaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**file_note** | **String** | File note in the file header. | [optional] 
**author** | **String** | Author information, default value is &#39;3d@aspose&#39;. | [optional] 
**creation_time** | **String** | The timestamp that exported this file, default value is current time. | [optional] 
**file_content_type** | [**FileContentType**](FileContentType.md) | Gets or sets  of the FileContent Style. | [optional] 


