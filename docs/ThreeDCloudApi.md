# AsposeThreeDCloud::ThreeDCloudApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_file**](ThreeDCloudApi.md#copy_file) | **PUT** /3d/storage/file/copy/{srcPath} | Copy file
[**copy_folder**](ThreeDCloudApi.md#copy_folder) | **PUT** /3d/storage/folder/copy/{srcPath} | Copy folder
[**create_folder**](ThreeDCloudApi.md#create_folder) | **PUT** /3d/storage/folder/{path} | Create the folder
[**delete_file**](ThreeDCloudApi.md#delete_file) | **DELETE** /3d/storage/file/{path} | Delete file
[**delete_folder**](ThreeDCloudApi.md#delete_folder) | **DELETE** /3d/storage/folder/{path} | Delete folder
[**delete_nodes**](ThreeDCloudApi.md#delete_nodes) | **DELETE** /3d/nodes | Delete nodes from scene,nodes are addressed by Object Addressing Path
[**download_file**](ThreeDCloudApi.md#download_file) | **GET** /3d/storage/file/{path} | Download file
[**get_disc_usage**](ThreeDCloudApi.md#get_disc_usage) | **GET** /3d/storage/disc | Get disc usage
[**get_file_versions**](ThreeDCloudApi.md#get_file_versions) | **GET** /3d/storage/version/{path} | Get file versions
[**get_files_list**](ThreeDCloudApi.md#get_files_list) | **GET** /3d/storage/folder/{path} | Get all files and folders within a folder
[**move_file**](ThreeDCloudApi.md#move_file) | **PUT** /3d/storage/file/move/{srcPath} | Move file
[**move_folder**](ThreeDCloudApi.md#move_folder) | **PUT** /3d/storage/folder/move/{srcPath} | Move folder
[**o_auth_post**](ThreeDCloudApi.md#o_auth_post) | **POST** /connect/token | Get Access token
[**object_exists**](ThreeDCloudApi.md#object_exists) | **GET** /3d/storage/exist/{path} | Check if file or folder exists
[**post_convert_by_format**](ThreeDCloudApi.md#post_convert_by_format) | **POST** /3d/saveas/newformat | Convert file on server to other formats with fileformat parameter             
[**post_convert_by_opt**](ThreeDCloudApi.md#post_convert_by_opt) | **POST** /3d/saveas/saveoption | Convert file on server to other formats with saveOption parameter             
[**post_create**](ThreeDCloudApi.md#post_create) | **POST** /3d/new | Create new file with specified format.             
[**post_model**](ThreeDCloudApi.md#post_model) | **POST** /3d/root | Parametric Modeling, Create a Entity with size and located in ...
[**post_pdf_raw_data**](ThreeDCloudApi.md#post_pdf_raw_data) | **POST** /3d/extract/rawdata | Extract raw data(without any modification) from a password protected PDF file             
[**post_save_as_part**](ThreeDCloudApi.md#post_save_as_part) | **POST** /3d/saveas/part | Convert part of the file into different format
[**post_scene_to_file**](ThreeDCloudApi.md#post_scene_to_file) | **POST** /3d/extract/scene | Extract and save in different format             
[**post_triangulate_new**](ThreeDCloudApi.md#post_triangulate_new) | **POST** /3d/triangulate/new | Triangulate whole file and save to the different file
[**post_triangulate_original**](ThreeDCloudApi.md#post_triangulate_original) | **POST** /3d/triangulate/original | Triangulate whole file and save to original file
[**storage_exists**](ThreeDCloudApi.md#storage_exists) | **GET** /3d/storage/{storageName}/exist | Check if storage exists
[**upload_file**](ThreeDCloudApi.md#upload_file) | **PUT** /3d/storage/file/{path} | Upload file


# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/folder/file.ext'

dest_path = 'dest_path_example' # String | Destination file path

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to copy
}

begin
  #Copy file
  api_instance.copy_file(src_path, dest_path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->copy_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

src_path = 'src_path_example' # String | Source folder path e.g. '/src'

dest_path = 'dest_path_example' # String | Destination folder path e.g. '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Copy folder
  api_instance.copy_folder(src_path, dest_path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->copy_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | Folder path to create e.g. 'folder_1/folder_2/'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Create the folder
  api_instance.create_folder(path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to delete
}

begin
  #Delete file
  api_instance.delete_file(path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  recursive: false # BOOLEAN | Enable to delete folders, subfolders and files
}

begin
  #Delete folder
  api_instance.delete_folder(path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_nodes**
> File delete_nodes(name, objectaddressingpath, opts)

Delete nodes from scene,nodes are addressed by Object Addressing Path

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The name of the source file.

objectaddressingpath = 'objectaddressingpath_example' # String | The object addressing path.

opts = { 
  folder: 'folder_example', # String | The folder of the source file.
  storage: 'storage_example' # String | The storage type
}

begin
  #Delete nodes from scene,nodes are addressed by Object Addressing Path
  result = api_instance.delete_nodes(name, objectaddressingpath, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->delete_nodes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the source file. | 
 **objectaddressingpath** | **String**| The object addressing path. | 
 **folder** | **String**| The folder of the source file. | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to download
}

begin
  #Download file
  result = api_instance.download_file(path, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get disc usage
  result = api_instance.get_disc_usage(opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->get_disc_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | File path e.g. '/file.ext'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get file versions
  result = api_instance.get_file_versions(path, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->get_file_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get all files and folders within a folder
  result = api_instance.get_files_list(path, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->get_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/src.ext'

dest_path = 'dest_path_example' # String | Destination file path e.g. '/dest.ext'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to move
}

begin
  #Move file
  api_instance.move_file(src_path, dest_path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->move_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

src_path = 'src_path_example' # String | Folder path to move e.g. '/folder'

dest_path = 'dest_path_example' # String | Destination folder path to move to e.g '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Move folder
  api_instance.move_folder(src_path, dest_path, opts)
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->move_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **o_auth_post**
> AccessTokenResponse o_auth_post(grant_type, client_id, client_secret)

Get Access token

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

grant_type = 'grant_type_example' # String | Grant Type

client_id = 'client_id_example' # String | App SID

client_secret = 'client_secret_example' # String | App Key


begin
  #Get Access token
  result = api_instance.o_auth_post(grant_type, client_id, client_secret)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->o_auth_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant Type | 
 **client_id** | **String**| App SID | 
 **client_secret** | **String**| App Key | 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | File or folder path e.g. '/file.ext' or '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID
}

begin
  #Check if file or folder exists
  result = api_instance.object_exists(path, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->object_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_convert_by_format**
> File post_convert_by_format(name, newformat, newfilename, opts)

Convert file on server to other formats with fileformat parameter             

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The name of the source file.

newformat = 'newformat_example' # String | The format of the new file.

newfilename = 'newfilename_example' # String | The name of the new file.

opts = { 
  folder: 'folder_example', # String | The folder of the source file.
  is_overwrite: false, # BOOLEAN | Overwrite the source file? true or false.
  storage: 'storage_example' # String | The storage type.
}

begin
  #Convert file on server to other formats with fileformat parameter             
  result = api_instance.post_convert_by_format(name, newformat, newfilename, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_convert_by_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the source file. | 
 **newformat** | **String**| The format of the new file. | 
 **newfilename** | **String**| The name of the new file. | 
 **folder** | **String**| The folder of the source file. | [optional] 
 **is_overwrite** | **BOOLEAN**| Overwrite the source file? true or false. | [optional] [default to false]
 **storage** | **String**| The storage type. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_convert_by_opt**
> File post_convert_by_opt(name, save_options, newfilename, opts)

Convert file on server to other formats with saveOption parameter             

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The name of the source file.

save_options = AsposeThreeDCloud::SaveOptions.new # SaveOptions | The saveOptions to save the file

newfilename = 'newfilename_example' # String | The name of the new file

opts = { 
  folder: 'folder_example', # String | The folder of the source file
  is_overwrite: false, # BOOLEAN | Overwrite the source file? true or false
  storage: 'storage_example' # String | The storage type
}

begin
  #Convert file on server to other formats with saveOption parameter             
  result = api_instance.post_convert_by_opt(name, save_options, newfilename, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_convert_by_opt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the source file. | 
 **save_options** | [**SaveOptions**](SaveOptions.md)| The saveOptions to save the file | 
 **newfilename** | **String**| The name of the new file | 
 **folder** | **String**| The folder of the source file | [optional] 
 **is_overwrite** | **BOOLEAN**| Overwrite the source file? true or false | [optional] [default to false]
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_create**
> File post_create(format)

Create new file with specified format.             

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

format = 'format_example' # String | The format of the new file.


begin
  #Create new file with specified format.             
  result = api_instance.post_create(format)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| The format of the new file. | 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **post_model**
> File post_model(name, modeldata, opts)

Parametric Modeling, Create a Entity with size and located in ...

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The name of the source file.

modeldata = AsposeThreeDCloud::ModelData.new # ModelData | ModelData struct.

opts = { 
  newformat: 'newformat_example', # String | new format of the source file.
  folder: 'folder_example', # String | The folder of the source file.
  storage: 'storage_example' # String | The storage type
}

begin
  #Parametric Modeling, Create a Entity with size and located in ...
  result = api_instance.post_model(name, modeldata, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_model: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the source file. | 
 **modeldata** | [**ModelData**](ModelData.md)| ModelData struct. | 
 **newformat** | **String**| new format of the source file. | [optional] 
 **folder** | **String**| The folder of the source file. | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_pdf_raw_data**
> File post_pdf_raw_data(name, multifileprefix, opts)

Extract raw data(without any modification) from a password protected PDF file             

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The PDF file's mame

multifileprefix = 'multifileprefix_example' # String | The file name for generated raw date

opts = { 
  password: 'password_example', # String | The password to open the PDF
  folder: 'folder_example', # String | The folder for source file
  storage: 'storage_example' # String | The storage type
}

begin
  #Extract raw data(without any modification) from a password protected PDF file             
  result = api_instance.post_pdf_raw_data(name, multifileprefix, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_pdf_raw_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The PDF file&#39;s mame | 
 **multifileprefix** | **String**| The file name for generated raw date | 
 **password** | **String**| The password to open the PDF | [optional] 
 **folder** | **String**| The folder for source file | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_save_as_part**
> File post_save_as_part(name, objectaddressingpath, newformat, newfilename, opts)

Convert part of the file into different format

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The name of the source file

objectaddressingpath = 'objectaddressingpath_example' # String | The object addressing path

newformat = 'newformat_example' # String | The format of the new file

newfilename = 'newfilename_example' # String | The name of the new file

opts = { 
  folder: 'folder_example', # String | The folder of the source file
  is_overwrite: false, # BOOLEAN | Overwrite the source file? true or false
  storage: 'storage_example' # String | The storage type
}

begin
  #Convert part of the file into different format
  result = api_instance.post_save_as_part(name, objectaddressingpath, newformat, newfilename, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_save_as_part: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the source file | 
 **objectaddressingpath** | **String**| The object addressing path | 
 **newformat** | **String**| The format of the new file | 
 **newfilename** | **String**| The name of the new file | 
 **folder** | **String**| The folder of the source file | [optional] 
 **is_overwrite** | **BOOLEAN**| Overwrite the source file? true or false | [optional] [default to false]
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_scene_to_file**
> File post_scene_to_file(name, multifileprefix, opts)

Extract and save in different format             

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The PDF file's mame

multifileprefix = 'multifileprefix_example' # String | The file name for extracted scene

opts = { 
  newformat: 'newformat_example', # String | The format of new file
  password: 'password_example', # String | The password to open the PDF
  folder: 'folder_example', # String | The folder for source file
  storage: 'storage_example' # String | The storage type
}

begin
  #Extract and save in different format             
  result = api_instance.post_scene_to_file(name, multifileprefix, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_scene_to_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The PDF file&#39;s mame | 
 **multifileprefix** | **String**| The file name for extracted scene | 
 **newformat** | **String**| The format of new file | [optional] 
 **password** | **String**| The password to open the PDF | [optional] 
 **folder** | **String**| The folder for source file | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_triangulate_new**
> File post_triangulate_new(name, newfilename, newformat, opts)

Triangulate whole file and save to the different file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The file's mame

newfilename = 'newfilename_example' # String | The new file's mame

newformat = 'newformat_example' # String | The new file's format

opts = { 
  folder: 'folder_example', # String | The folder for source file
  storage: 'storage_example' # String | The storage type
}

begin
  #Triangulate whole file and save to the different file
  result = api_instance.post_triangulate_new(name, newfilename, newformat, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_triangulate_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The file&#39;s mame | 
 **newfilename** | **String**| The new file&#39;s mame | 
 **newformat** | **String**| The new file&#39;s format | 
 **folder** | **String**| The folder for source file | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_triangulate_original**
> File post_triangulate_original(name, opts)

Triangulate whole file and save to original file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

name = 'name_example' # String | The file's mame

opts = { 
  folder: 'folder_example', # String | The folder for source file
  storage: 'storage_example' # String | The storage type
}

begin
  #Triangulate whole file and save to original file
  result = api_instance.post_triangulate_original(name, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->post_triangulate_original: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The file&#39;s mame | 
 **folder** | **String**| The folder for source file | [optional] 
 **storage** | **String**| The storage type | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

storage_name = 'storage_name_example' # String | Storage name


begin
  #Check if storage exists
  result = api_instance.storage_exists(storage_name)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->storage_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Example
```ruby
# load the gem
require 'AsposeThreeDCloud'
# setup authorization
AsposeThreeDCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeThreeDCloud::ThreeDCloudApi.new

path = 'path_example' # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Upload file
  result = api_instance.upload_file(path, file, opts)
  p result
rescue AsposeThreeDCloud::ApiError => e
  puts "Exception when calling ThreeDCloudApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



