class AutosController < ApplicationController
  # GET /autos
  # GET /autos.json
  def index
    @autos = Auto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @autos }
    end
  end

  # GET /autos/1
  # GET /autos/1.json
  def show
    @auto = Auto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auto }
    end
  end

  # GET /autos/new
  # GET /autos/new.json
  def new
    @auto = Auto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auto }
    end
  end

  # GET /autos/1/edit
  def edit
    @auto = Auto.find(params[:id])
  end

  # POST /autos
  # POST /autos.json
  def create
    @auto = Auto.new(params[:auto])

    respond_to do |format|
      if @auto.save
        format.html { redirect_to @auto, notice: 'Auto was successfully created.' }
        format.json { render json: @auto, status: :created, location: @auto }
      else
        format.html { render action: "new" }
        format.json { render json: @auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /autos/1
  # PUT /autos/1.json
  def update
    @auto = Auto.find(params[:id])

    respond_to do |format|
      if @auto.update_attributes(params[:auto])
        format.html { redirect_to @auto, notice: 'Auto was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autos/1
  # DELETE /autos/1.json
  def destroy
    @auto = Auto.find(params[:id])
    @auto.destroy

    respond_to do |format|
      format.html { redirect_to autos_url }
      format.json { head :ok }
    end
  end
end
