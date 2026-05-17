require 'openssl'
require 'base64'

$alg = 'aes-256-cbc'
$iv = '0000000000000000' ## 16 characters

module Jekyll
  module EncryptFilter
    def encrypt(input, key="SOME_RANDOM_KEY_32_CHR_123456789")
      key = key.rjust(32, 'x')
      des = OpenSSL::Cipher::Cipher.new($alg)
      des.encrypt
      des.key = key
      des.iv = $iv
      result = des.update(input)
      result << des.final
      return Base64.encode64 result
    end
  end
end

Liquid::Template.register_filter(Jekyll::EncryptFilter)

module Jekyll
  module DecryptFilter
    def decrypt(input, key="SOME_RANDOM_KEY_32_CHR_123456789")
      key = key.rjust(32, 'x')
      des = OpenSSL::Cipher::Cipher.new($alg)
      des.decrypt
      des.key = key
      des.iv = $iv
      result = des.update(Base64.decode64(input))
      result << des.final
      return result
    end
  end
end

Liquid::Template.register_filter(Jekyll::DecryptFilter)
