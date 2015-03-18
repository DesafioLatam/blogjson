module Blog
    class UserPresenter < Grape::Entity
      expose :nickname
      expose :picture
    end

    class API < Grape::API
        version 'v1', using: :path
        format :json

        resource :posts do
            desc 'obtener todos los posts'
            get :all do
                Post.where(is_published: true)
            end

            desc 'crear post'
            params do
                requires :title
                requires :content
            end
            post :new do
                Post.create!(title: params[:title], content: params[:content], is_published: true)
            end

        end
    end
end
