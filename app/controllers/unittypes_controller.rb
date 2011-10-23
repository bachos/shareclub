class UnittypesController < ApplicationController
  # GET /Unittypes
  # GET /Unittypes.xml
  def index
    @unittypes = Unittype.all 

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @Unittypes }
    #end
  end

  # GET /Unittypes/1
  # GET /Unittypes/1.xml
  def show
    @unittype = Unittype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unittype }
    end
  end

  # GET /Unittypes/new
  # GET /Unittypes/new.xml
  def new
    @unittype = Unittype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unittype }
    end
  end

  # GET /Unittypes/1/edit
  def edit
    @unittype = Unittype.find(params[:id])
  end

  # POST /Unittypes
  # POST /Unittypes.xml
  def create
    @unittype = Unittype.new(params[:unittype])

    respond_to do |format|
      if @unittype.save
        format.html { redirect_to(@unittype, :notice => 'Unittype was successfully created.') }
        format.xml  { render :xml => @unittype, :status => :created, :location => @unittype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unittype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Unittypes/1
  # PUT /Unittypes/1.xml
  def update
    @unittype = Unittype.find(params[:id])

    respond_to do |format|
      if @unittype.update_attributes(params[:unittype])
        format.html { redirect_to(@unittype, :notice => 'Unittype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unittype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Unittypes/1
  # DELETE /Unittypes/1.xml
  def destroy
    @unittype = Unittype.find(params[:id])
    @unittype.destroy

    respond_to do |format|
      format.html { redirect_to(unittypes_url) }
      format.xml  { head :ok }
    end
  end
end
