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
      aws_access_key_id: 'AKIA4HFKPDHMLXECN72C',
      aws_secret_access_key: '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',
      path_style: true
    }
    
    
  end
end