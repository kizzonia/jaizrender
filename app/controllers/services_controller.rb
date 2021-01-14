class ServicesController < InheritedResources::Base

  before_action :find_services, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @services = Service.all.order('created_at DESC')
    @headers = Header.all

  end

  def show
    @headers = Header.all

  end

  private
  def find_services
    @service = Service.friendly.find(params[:id])
  end
    def service_params
      params.require(:service).permit(:title, :sub_title, :body, :serviceimg, :slug, :icon)
    end

end
