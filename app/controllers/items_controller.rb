class ItemsController < ApplicationController
  helper_method :sort_column, :sort_direction
    
  # GET /items
  # GET /items.json
  def index
    #@items = Item.all
    @items = Item.joins(:card).search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 50, :page => params[:page])

    if params[:item_type] && params[:item_type] != "0"
      @items = @items.where("item_type = ?", params[:item_type])
    end
        
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end
  
  def export

    @items = Item.all
   
    render :layout => false
    
  end  

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    if @item.set_card_id
      @setcard = Card.find(@item.set_card_id)  
    else
      @setcard = nil
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    if current_user
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  else
    redirect_to root_url
  end   
      
  end

  # GET /items/1/edit
  def edit
 if current_user
    @item = Item.find(params[:id])
  else
    redirect_to root_url
  end  
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
#  def destroy
#    @item = Item.find(params[:id])
#    @item.destroy

#    respond_to do |format|
#      format.html { redirect_to items_url }
#      format.json { head :no_content }
#    end
#  end
  
  def sort_column
    if params[:sort]=='name'
      "name"
    else
      Item.column_names.include?(params[:sort]) ? params[:sort] : "item_name"
    end
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end    
end
