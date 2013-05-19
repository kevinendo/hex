class SocketGemsController < ApplicationController
  # GET /socket_gems
  # GET /socket_gems.json
  def index
    @socket_gems = SocketGem.order("name asc")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @socket_gems }
    end
  end

  # GET /socket_gems/1
  # GET /socket_gems/1.json
  def show
    @socket_gem = SocketGem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @socket_gem }
    end
  end

  # GET /socket_gems/new
  # GET /socket_gems/new.json
  def new
  if current_user  
    @socket_gem = SocketGem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @socket_gem }
    end
  else
  redirect_to root_url
end     
  end

  # GET /socket_gems/1/edit
  def edit
    if current_user
    @socket_gem = SocketGem.find(params[:id])
      else
      redirect_to root_url
    end      
  end

  # POST /socket_gems
  # POST /socket_gems.json
  def create
    @socket_gem = SocketGem.new(params[:socket_gem])

    respond_to do |format|
      if @socket_gem.save
        format.html { redirect_to @socket_gem, notice: 'Socket gem was successfully created.' }
        format.json { render json: @socket_gem, status: :created, location: @socket_gem }
      else
        format.html { render action: "new" }
        format.json { render json: @socket_gem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /socket_gems/1
  # PUT /socket_gems/1.json
  def update
    @socket_gem = SocketGem.find(params[:id])

    respond_to do |format|
      if @socket_gem.update_attributes(params[:socket_gem])
        format.html { redirect_to @socket_gem, notice: 'Socket gem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @socket_gem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socket_gems/1
  # DELETE /socket_gems/1.json
#  def destroy
#    @socket_gem = SocketGem.find(params[:id])
#    @socket_gem.destroy

#    respond_to do |format|
#      format.html { redirect_to socket_gems_url }
#      format.json { head :no_content }
#    end
#  end
end
