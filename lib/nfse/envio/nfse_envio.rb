require 'json'

module Nfse
  module Envio
    class NfseEnvio < Nfse::Base
      include Virtus

      attribute :rps, Array[Rps]

      attribute :id, String, default: lambda { |nfse_envio,_| "#{nfse_envio.object_id}#{Time.now.to_i}" }

      def initialize(attributes = nil)
        attributes = JSON.parse(attributes) if attributes.is_a?(String)
        super(attributes)
      end

      def render_rps
        rps.reduce('') do |xml,obj|
          xml << obj.render
        end
      end

    end
  end
end
