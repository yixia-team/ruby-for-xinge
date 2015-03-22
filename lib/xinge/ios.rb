require 'xinge/base'
module Xinge
  class Ios < Base

    ENV_MAP = {'production' => 1, 'development' => 2}

    def initialize(accessId = nil, secretKey = nil, options = {})
      super
    end

    def pushToSingleAccount(account, title = "", content, params = {})
      self.push_single_account(account, 1, build_simple_message(title, content), params)
    end

    def pushToSingleDevice(token, title, content, params={})
      self.push_single_device(token, 1, build_simple_message(title, content), params.merge({environment: ENV_MAP[Xinge.config[:env]]}))
    end

    def pushToAllDevice(title, content, params={})
      self.push_all_device(1, build_simple_message(title, content), params.merge({environment: ENV_MAP[Xinge.config[:env]]}))
    end

    protected

    def build_simple_message(title,content)
      result = {
        aps: {
          alert: {
            body: content
          },
          sound: 'default',
          badge: 5
        }
      }
      result[:aps][:alert][:title] = title unless title.empty?
      result.to_json
    end
  end
end
