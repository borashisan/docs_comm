if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIA4HFKPDHMEVG7N3RJ '],
      :aws_secret_access_key => ENV['OtwWL6rszULrbQTiTL9OqNSHqCPYgn88TNXyE17x']
    }
    config.fog_directory     =  ENV['docscomm']
  end
end