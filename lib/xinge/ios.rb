require 'xinge/base'
module Xinge
  class Ios < Base

    ENV_MAP = {'production' => 1, 'development' => 2}

    def initialize(accessId = nil, secretKey = nil, options = {})
      super
    end

    def pushToSingleAccount(account, title, content, badge = 1, params = {})
      self.push_single_account(account, 1, build_simple_message(title, content, badge), params.merge({environment: ENV_MAP[Xinge.config[:env]]}))
    end

    def pushToSingleDevice(token, title, content, badge = 1, params = {})
      self.push_single_device(token, 1, build_simple_message(title, content, badge), params.merge({environment: ENV_MAP[Xinge.config[:env]]}))
    end

    def pushToAllDevice(title, content, badge = 1, params = {})
      self.push_all_device(1, build_simple_message(title, content, badge), params.merge({environment: ENV_MAP[Xinge.config[:env]]}))
    end

    protected

    def build_simple_message(title, content, badge = 1)
      result = { aps: {} }
      if title.empty? && content[:alert]
        result[:aps] = {
          sound: "default",
          badge: badge,
          alert: content[:alert]
        }
      elsif content[:alert]
        result[:aps] = {
          sound: "default",
          badge: badge,
          alert: {title: title, body: content[:alert]}
        }
      end
      result.merge!(content[:custom_content]) unless content[:custom_content].nil?
      result[:aps].merge!(content[:aps_custom_content]) unless content[:aps_custom_content].nil?
      result.to_json
    end
  end
end
