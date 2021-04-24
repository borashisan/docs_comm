require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'docs-comm' # 作成したバケット名を記述
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: 'ap-northeast-1',     # 例: 'ap-northeast-1'
      aws_access_key_id: ENV['AKIA4HFKPDHMEVG7N3RJ'],
      aws_secret_access_key: ENV['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'],
      path_style: true
    }
    
    
  end
end