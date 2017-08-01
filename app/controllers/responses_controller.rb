class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_rsvp, only: [:index, :coming, :NotComing, :pasta, :ribs]

  # GET /responses
  # GET /responses.json
  def index
    
  end

  def coming
    
  end

  def NotComing
    
  end

  def pasta
    
    
  end

  def ribs
   
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @response = Response.new
    1.times {@response.guests.build}
  end

  # GET /responses/1/edit
  def edit
  end

  # POST /responses
  # POST /responses.json
  def create
    byebug
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to @response, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to @response, notice: 'Response was successfully updated.' }
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    def set_rsvp
      @responses = Response.all.order(attendance: :desc)

      @responses_yes = Response.where(attendance: "Yes").sort_by {|r| r.user.last_name}
      @total_coming = 0
      @responses_yes.each {|r| @total_coming += r.number}

      @responses_no = Response.where(attendance: "No")

      #@ribs = Response.where(entree: "Ribs")
      #@pasta = Response.where(entree: "Pasta")
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:attendance, :number, :message, :user_id, guests_attributes: [:id, :last_name, :first_name, :food])
    end
end
