class NothingsController < ApplicationController
  # GET /nothings
  # GET /nothings.json
  def index
    @nothings = Nothing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nothings }
    end
  end

  # GET /nothings/1
  # GET /nothings/1.json
  def show
    @nothing = Nothing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nothing }
    end
  end

  # GET /nothings/new
  # GET /nothings/new.json
  def new
    @nothing = Nothing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nothing }
    end
  end

  # GET /nothings/1/edit
  def edit
    @nothing = Nothing.find(params[:id])
  end

  # POST /nothings
  # POST /nothings.json
  def create
    @nothing = Nothing.new(params[:nothing])

    respond_to do |format|
      if @nothing.save
        format.html { redirect_to @nothing, notice: 'Nothing was successfully created.' }
        format.json { render json: @nothing, status: :created, location: @nothing }
      else
        format.html { render action: "new" }
        format.json { render json: @nothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nothings/1
  # PUT /nothings/1.json
  def update
    @nothing = Nothing.find(params[:id])

    respond_to do |format|
      if @nothing.update_attributes(params[:nothing])
        format.html { redirect_to @nothing, notice: 'Nothing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nothings/1
  # DELETE /nothings/1.json
  def destroy
    @nothing = Nothing.find(params[:id])
    @nothing.destroy

    respond_to do |format|
      format.html { redirect_to nothings_url }
      format.json { head :no_content }
    end
  end
end
