module V1
  class Root < Grape::API
    version 'v1'
    mount V1::Items
  end
end