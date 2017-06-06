class ClasificacionPegisController < ApplicationController
  # GET /clasificacion_pegis
  # GET /clasificacion_pegis.json
  def index
    @clasificacion_pegis = ClasificacionPegi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clasificacion_pegis }
    end
  end

  # GET /clasificacion_pegis/1
  # GET /clasificacion_pegis/1.json
  def show
    @clasificacion_pegi = ClasificacionPegi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clasificacion_pegi }
    end
  end

  # GET /clasificacion_pegis/new
  # GET /clasificacion_pegis/new.json
  def new
    @clasificacion_pegi = ClasificacionPegi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clasificacion_pegi }
    end
  end

  # GET /clasificacion_pegis/1/edit
  def edit
    @clasificacion_pegi = ClasificacionPegi.find(params[:id])
  end

  # POST /clasificacion_pegis
  # POST /clasificacion_pegis.json
  def create
    @clasificacion_pegi = ClasificacionPegi.new(params[:clasificacion_pegi])

    respond_to do |format|
      if @clasificacion_pegi.save
        format.html { redirect_to @clasificacion_pegi, notice: 'Clasificacion pegi was successfully created.' }
        format.json { render json: @clasificacion_pegi, status: :created, location: @clasificacion_pegi }
      else
        format.html { render action: "new" }
        format.json { render json: @clasificacion_pegi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clasificacion_pegis/1
  # PUT /clasificacion_pegis/1.json
  def update
    @clasificacion_pegi = ClasificacionPegi.find(params[:id])

    respond_to do |format|
      if @clasificacion_pegi.update_attributes(params[:clasificacion_pegi])
        format.html { redirect_to @clasificacion_pegi, notice: 'Clasificacion pegi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @clasificacion_pegi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clasificacion_pegis/1
  # DELETE /clasificacion_pegis/1.json
  def destroy
    @clasificacion_pegi = ClasificacionPegi.find(params[:id])
    @clasificacion_pegi.destroy

    respond_to do |format|
      format.html { redirect_to clasificacion_pegis_url }
      format.json { head :ok }
    end
  end
end
