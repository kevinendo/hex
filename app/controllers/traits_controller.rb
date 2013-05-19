class TraitsController < ApplicationController
  # GET /traits
  # GET /traits.json
  def index
      if current_user     
    @traits = Trait.order(:trait_name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @traits }
    end
  else
  redirect_to root_url
end          
  end

  # GET /traits/1
  # GET /traits/1.json
  def show
    @trait = Trait.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trait }
    end
  end

  # GET /traits/new
  # GET /traits/new.json
  def new
        if current_user      
    @trait = Trait.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trait }
    end
  else
  redirect_to root_url
end          
  end

  # GET /traits/1/edit
  def edit
        if current_user         
    @trait = Trait.find(params[:id])
  else
  redirect_to root_url
end     
  end

  # POST /traits
  # POST /traits.json
  def create
    @trait = Trait.new(params[:trait])

    respond_to do |format|
      if @trait.save
        format.html { redirect_to @trait, notice: 'Trait was successfully created.' }
        format.json { render json: @trait, status: :created, location: @trait }
      else
        format.html { render action: "new" }
        format.json { render json: @trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /traits/1
  # PUT /traits/1.json
  def update
    @trait = Trait.find(params[:id])

    respond_to do |format|
      if @trait.update_attributes(params[:trait])
        format.html { redirect_to @trait, notice: 'Trait was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traits/1
  # DELETE /traits/1.json
#  def destroy
#    @trait = Trait.find(params[:id])
#    @trait.destroy

#    respond_to do |format|
#      format.html { redirect_to traits_url }
#      format.json { head :no_content }
#    end
#  end
end
