=begin
--------------------------------------------------------------------------------------------------------------------
  Copyright (c) 2020 Aspose.3D Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------------------------------------------
=end

require 'minitest/autorun'
require 'minitest/unit'
require 'base64'

require_relative '../lib/aspose_3d_cloud'

class ThreeDTests < Minitest::Test
  include MiniTest::Assertions
  include AsposeThreeDCloud


  def setup
    # Get App key and App SID from https://aspose.cloud
    @threed_api = ThreeDCloudApi.new('****your AppKey****', '****your AppID****')
    @temp_folder = '3DTest'
    @test_data_folder = '../test_data/'
    config = @threed_api.api_client.config
    config.scheme = 'https'
  end


  def teardown
    end
=begin
  def  upload_file(file_name)
    response = @threed_api.upload_file(@temp_folder + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
      #assert(response, "Failed to upload #{file_name} file.")
  end


  def test_upload_file
    file_name = 'Aspose.pdf'
    response = @threed_api.upload_file(@temp_folder  + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
    assert(response, "Failed to upload #{file_name} file.")
  end

  def test_get_download
    file_name = 'Aspose.pdf'
    upload_file(file_name)
    response = @threed_api.download_file(@temp_folder + '/' + file_name)
    assert(response, "Failed to download #{file_name} file.")
  end

  def test_copy_file
    src_path = '3DTest/Aspose.pdf'
    dest_path= '3DTest/Aspose.Copy2.pdf'
    response = @threed_api.copy_file(src_path,dest_path);
    assert(response, "Failed to copy #{src_path} file.")
  end



  def test_convert_by_saveoption·
      name = "Aspose.pdf"
      saveopt = PlySaveOption.new()
      saveopt.save_format = SaveFormat::PLY
      fs = FileSystem.new()
      fs.file_system_type = FileSystemType::MemoryFileSystem
      saveopt.file_system =fs
      pc = Array["y","x","z"]
      saveopt.position_components = pc
      newfilename = "saveasOpts.pdf"
      opts = {
          :folder => @temp_folder,
          :is_overwrite => true,
          :storage => nil
      }
      response = @threed_api.post_convert_by_opt(name,saveopt,newfilename,opts)
      assert(response, "Failed to convert #{name} file by saveoption.")
  end
=end

  def test_create_entity
      name = "Aspose.pdf"
      modeldata = ModelData.new
      transform =  Transform.new
      vector3 = Vector3.new
      entity = Entity.new
      #torus = Torus.new
      box = Box.new
      modeldata.transform = transform

      modeldata.transform.translation = vector3
      modeldata.transform.translation.x = 10
      modeldata.transform.translation.y = 10
      modeldata.transform.translation.z = 10

      modeldata.entity = entity;
      modeldata.entity.box = box;
      modeldata.entity.box.length = 1000;
      modeldata.entity.box.width = 1000;
      modeldata.entity.box.height = 100;

=begin
      modeldata.entity.torus = torus;
      modeldata.entity.torus.radius = 10;
      modeldata.entity.torus.tube = 10;
      modeldata.entity.torus.radial_segments = 10;
      modeldata.entity.torus.tubular_segments = 10;
=end
      opts = {
          :folder => @temp_folder,
          :newformat => "pdf",
          :storage => nil
      }
      response = @threed_api.post_model(name,modeldata,opts)
      assert(response, "Failed to create entity.")
      end


end