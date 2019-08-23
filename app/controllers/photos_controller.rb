class PhotosController < InheritedResources::Base
  before_action :authenticate_user!
  private

    def photo_params
      params.require(:photo).permit(:title, :content, :image)
    end

end
