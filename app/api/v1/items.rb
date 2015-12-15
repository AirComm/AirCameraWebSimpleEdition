module V1
  class Items < Grape::API
    resource :items do

      desc "ITEM一覧取得"
      get '', jbuilder: 'items/index' do
        @items = Item.all
      end

      desc "ITEM登録"
      params do
        requires :title, type: String, desc: 'ITEMタイトル'
        requires :video, type: Hash, desc: 'VIDEOファイル'
      end
      post '' do
        # binding.pry
        begin
          Item.create({
            title: params[:title],
            video: params[:video]
          })
          status 201
          return "succeeded"
        rescue #=> e
          return "failed"
        end
      end
        # Item.create(title: params[:title], video: params[:video])
        # status 201
    end
  end
end