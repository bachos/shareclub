class closersController < ApplicationController
  # GET /closers
  # GET /closers.xml
  def index
    @closers = Closer.all 

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.xml  { render :xml => @closers }
    #end
  end

  # GET /closers/1
  # GET /closers/1.xml
  def show
    @closer = Closer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @closer }
    end
  end

  # GET /closers/new
  # GET /closers/new.xml
  def new
    @closer = Closer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @closer }
    end
  end

  # GET /closers/1/edit
  def edit
    @closer = Closer.find(params[:id])
  end

  # POST /closers
  # POST /closers.xml
  def create
    @closer = Closer.new(params[:closer])

    respond_to do |format|
      if @closer.save
        format.html { redirect_to(@closer, :notice => 'Closer was successfully created.') }
        format.xml  { render :xml => @closer, :status => :created, :location => @closer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @closer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /closers/1
  # PUT /closers/1.xml
  def update
    @closer = Closer.find(params[:id])

    respond_to do |format|
      if @closer.update_attributes(params[:closer])
        format.html { redirect_to(@closer, :notice => 'Closer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @closer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /closers/1
  # DELETE /closers/1.xml
  def destroy
    @closer = Closer.find(params[:id])
    @closer.destroy

    respond_to do |format|
      format.html { redirect_to(closers_url) }
      format.xml  { head :ok }
    end
  end
end
