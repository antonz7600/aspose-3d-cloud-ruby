# AsposeThreeDCloud::FBXSaveOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**save_format** | [**SaveFormat**](SaveFormat.md) | Gets or sets  of the SaveFormat. | [optional] 
**file_system** | [**FileSystem**](FileSystem.md) | Allow user to handle how to manage the external dependencies during load/save. | [optional] 
**lookup_paths** | **Array&lt;String&gt;** | Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load | [optional] 
**file_name** | **String** | The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material. | [optional] 
**file_format** | **String** | The file format��like FBX,U3D,PDF .... | [optional] 
**directory** | **String** | Only for LocalFileSystem | [optional] 
**enable_compression** | **BOOLEAN** |  Compression large binary data in the FBX file, default value is true | [optional] 
**fold_repeated_curve_data** | **BOOLEAN** | Gets or sets whether reuse repeated curve data by increasing last data&#39;s ref count | [optional] 
**export_legacy_material_properties** | **BOOLEAN** | Gets or sets whether export legacy material properties, used for back compatibility. This option is turned on by default | [optional] 
**video_for_texture** | **BOOLEAN** | Gets or sets whether generate a Video instance for Aspose.ThreeD.Shading.Texture when exporting as FBX. | [optional] 
**generate_vertex_element_material** | **BOOLEAN** | Gets or sets whether always generate a Aspose.ThreeD.Entities.VertexElementMaterial for geometries if the attached node contains materials. This is turned off by default. | [optional] 


