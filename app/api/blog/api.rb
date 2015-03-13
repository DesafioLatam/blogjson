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
        end
    end
end
