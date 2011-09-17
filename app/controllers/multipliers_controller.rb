class MultipliersController < ApplicationController
  # GET /Multipliers
  # GET /Multipliers.xml
  def index
    @multipliers = Multiplier.all 

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @Multipliers }
    #end
  end

  # GET /Multipliers/1
  # GET /Multipliers/1.xml
  def show
    @multiplier = Multiplier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @multiplier }
    end
  end

  # GET /Multipliers/new
  # GET /Multipliers/new.xml
  def new
    @multiplier = Multiplier.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @multiplier }
    end
  end

  # GET /Multipliers/1/edit
  def edit
    @multiplier = Multiplier.find(params[:id])
  end

  # POST /Multipliers
  # POST /Multipliers.xml
  def create
    @multiplier = Multiplier.new(params[:multiplier])

    respond_to do |format|
      if @multiplier.save
        format.html { redirect_to(@multiplier, :notice => 'El multiplicador fue guardado satisfactoriamente.') }
        format.xml  { render :xml => @multiplier, :status => :created, :location => @multiplier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @multiplier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Multipliers/1
  # PUT /Multipliers/1.xml
  def update
    @multiplier = Multiplier.find(params[:id])

    respond_to do |format|
      if @multiplier.update_attributes(params[:multiplier])
        format.html { redirect_to(@multiplier, :notice => 'El Multiplicador fue actualizado satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @multiplier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Multipliers/1
  # DELETE /Multipliers/1.xml
  def destroy
    @multiplier = Multiplier.find(params[:id])
    @multiplier.destroy

    respond_to do |format|
      format.html { redirect_to(multipliers_url) }
      format.xml  { head :ok }
    end
  end
end
