class SeasonsController < ApplicationController
  # GET /Seasons
  # GET /Seasons.xml
  def index
    @seasons = Season.all 

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @Seasons }
    #end
  end

  # GET /Seasons/1
  # GET /Seasons/1.xml
  def show
    @season = Season.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @season }
    end
  end

  # GET /Seasons/new
  # GET /Seasons/new.xml
  def new
    @season = Season.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @season }
    end
  end

  # GET /Seasons/1/edit
  def edit
    @season = Season.find(params[:id])
  end

  # POST /Seasons
  # POST /Seasons.xml
  def create
    @season = Season.new(params[:season])

    respond_to do |format|
      if @season.save
        format.html { redirect_to(@season, :notice => 'La temporada fue guardado satisfactoriamente.') }
        format.xml  { render :xml => @season, :status => :created, :location => @season }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @season.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Seasons/1
  # PUT /Seasons/1.xml
  def update
    @season = Season.find(params[:id])

    respond_to do |format|
      if @season.update_attributes(params[:season])
        format.html { redirect_to(@season, :notice => 'La temporada  fue actualizado satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @season.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Seasons/1
  # DELETE /Seasons/1.xml
  def destroy
    @season = Season.find(params[:id])
    @season.destroy

    respond_to do |format|
      format.html { redirect_to(seasons_url) }
      format.xml  { head :ok }
    end
  end
end
