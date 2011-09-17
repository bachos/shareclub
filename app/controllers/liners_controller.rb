class LinersController < ApplicationController
  # GET /Liners
  # GET /Liners.xml
  def index
    @liners = Liner.all 

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @Liners }
    #end
  end

  # GET /Liners/1
  # GET /Liners/1.xml
  def show
    @liner = Liner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liner }
    end
  end

  # GET /Liners/new
  # GET /Liners/new.xml
  def new
    @liner = Liner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liner }
    end
  end

  # GET /Liners/1/edit
  def edit
    @liner = Liner.find(params[:id])
  end

  # POST /Liners
  # POST /Liners.xml
  def create
    @liner = Liner.new(params[:liner])

    respond_to do |format|
      if @liner.save
        format.html { redirect_to(@liner, :notice => 'Liner was successfully created.') }
        format.xml  { render :xml => @liner, :status => :created, :location => @liner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @liner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Liners/1
  # PUT /Liners/1.xml
  def update
    @liner = Liner.find(params[:id])

    respond_to do |format|
      if @liner.update_attributes(params[:liner])
        format.html { redirect_to(@liner, :notice => 'Liner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Liners/1
  # DELETE /Liners/1.xml
  def destroy
    @liner = Liner.find(params[:id])
    @liner.destroy

    respond_to do |format|
      format.html { redirect_to(liners_url) }
      format.xml  { head :ok }
    end
  end
end
