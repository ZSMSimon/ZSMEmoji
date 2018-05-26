Pod::Spec.new do |s|
  s.name          = "ZSMEmoji"
  s.version       = "1.0.0"
  s.summary       = "处理字符串中的emoji"
  s.description   = <<-DESC
                    处理字符串中的emoji,避免上传数据服务器无法处理的情况（比如直接获取微信昵称作为用户名称）。
                   DESC
  s.homepage      = "https://github.com/ZSMSimon/ZSMEmoji"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Simon" => "18320832089@163.com" }
  s.platform      = :ios, "8.0"
  s.source        = { :git => "https://github.com/ZSMSimon/ZSMEmoji.git", :tag => s.version.to_s }
  s.requires_arc  = true
  s.source_files  = "ZSMEmoji/*.{h,m}"
end