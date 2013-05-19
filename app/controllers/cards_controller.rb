class CardsController < ApplicationController
  helper_method :sort_column, :sort_direction


  # GET /cards
  # GET /cards.json
  def index
      @cards = Card.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 50, :page => params[:page])
      
      if params[:color] && params[:color] != "0"
        @cards = @cards.where("color = ?", params[:color])
      end
      if params[:card_type] && params[:card_type] != "0"
        @cards = @cards.where("card_type = ?", params[:card_type])
      end      

  end
  
  def export

    @cards = Card.all
   
    render :layout => false
    
  end
  

  # GET /cards/1
  # GET /cards/1.json
  def show
    @card = Card.find(params[:id])
      
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card }
    end
  end
  

  # GET /cards/new
  # GET /cards/new.json
  def new
    if current_user
      @card = Card.new
      
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @card }
      end
    else
      redirect_to root_url
    end   
  end

  # GET /cards/1/edit
  def edit
    if current_user
      @card = Card.find(params[:id])
    else
      redirect_to root_url
    end
    
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(params[:card])
    
    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render json: @card, status: :created, location: @card }
      else
        format.html { render action: "new" }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.json
  def update
    @card = Card.find(params[:id])

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
#  def destroy
#    @card = Card.find(params[:id])
#    @card.destroy

#    respond_to do |format|
#      format.html { redirect_to cards_url }
#      format.json { head :no_content }
#    end
#  end
  

    
  def sort_column
    Card.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end  
end
