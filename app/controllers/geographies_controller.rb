class GeographiesController < ApplicationController
  # GET /geographies
  # GET /geographies.xml
  def index
    @geographies = Geography.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @geographies }
    end
  end

  # GET /geographies/1
  # GET /geographies/1.xml
  def show
    @geography = Geography.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @geography }
    end
  end

  # GET /geographies/new
  # GET /geographies/new.xml
  def new
    @geography = Geography.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @geography }
    end
  end

  # GET /geographies/1/edit
  def edit
    @geography = Geography.find(params[:id])
  end

  # POST /geographies
  # POST /geographies.xml
  def create
    @geography = Geography.new(params[:geography])

    respond_to do |format|
      if @geography.save
        format.html { redirect_to(@geography, :notice => 'Geography was successfully created.') }
        format.xml  { render :xml => @geography, :status => :created, :location => @geography }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @geography.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /geographies/1
  # PUT /geographies/1.xml
  def update
    @geography = Geography.find(params[:id])

    respond_to do |format|
      if @geography.update_attributes(params[:geography])
        format.html { redirect_to(@geography, :notice => 'Geography was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @geography.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /geographies/1
  # DELETE /geographies/1.xml
  def destroy
    @geography = Geography.find(params[:id])
    @geography.destroy

    respond_to do |format|
      format.html { redirect_to(geographies_url) }
      format.xml  { head :ok }
    end
  end
end
