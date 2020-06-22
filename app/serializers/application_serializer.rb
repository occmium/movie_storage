# frozen_string_literal: true

class ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  def call
    return serializable_hash.dig(:data, :attributes) if serializable_hash.dig(:data).class == Hash

    serializable_hash.dig(:data).map { |record| record[:attributes] } if serializable_hash.dig(:data).class == Array
  end
end
