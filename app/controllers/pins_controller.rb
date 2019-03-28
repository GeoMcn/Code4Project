class PinsController < InheritedResources::Base

  private

    def pin_params
      params.require(:pin).permit(:title, :body, :image)
    end
end

