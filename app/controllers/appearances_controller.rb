class AppearancesController < ApplicationController
  # GET /appearances
  # GET /appearances.json
  def index
    @appearances = Appearance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appearances }
    end
  end

  # GET /appearances/1
  # GET /appearances/1.json
  def show
    @appearance = Appearance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appearance }
    end
  end

  # GET /appearances/new
  # GET /appearances/new.json
  def new
    @appearance = Appearance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appearance }
    end
  end

  # GET /appearances/1/edit
  def edit
    @appearance = Appearance.find(params[:id])
  end

  # POST /appearances
  # POST /appearances.json
  def create
    @appearance = Appearance.new(params[:appearance])

    respond_to do |format|
      if @appearance.save
        format.html { redirect_to @appearance, notice: 'Appearance was successfully created.' }
        format.json { render json: @appearance, status: :created, location: @appearance }
      else
        format.html { render action: "new" }
        format.json { render json: @appearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appearances/1
  # PUT /appearances/1.json
  def update
    @appearance = Appearance.find(params[:id])

    respond_to do |format|
      if @appearance.update_attributes(params[:appearance])
        format.html { redirect_to @appearance, notice: 'Appearance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearances/1
  # DELETE /appearances/1.json
  def destroy
    @appearance = Appearance.find(params[:id])
    @appearance.destroy

    respond_to do |format|
      format.html { redirect_to appearances_url }
      format.json { head :no_content }
    end
  end
end
