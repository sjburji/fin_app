class MarketentitiesController < ApplicationController
  # GET /marketentities
  # GET /marketentities.xml
  def index
    @marketentities = Marketentity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @marketentities }
    end
  end

  # GET /marketentities/1
  # GET /marketentities/1.xml
  def show
    @marketentity = Marketentity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @marketentity }
    end
  end

  # GET /marketentities/new
  # GET /marketentities/new.xml
  def new
    @marketentity = Marketentity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @marketentity }
    end
  end

  # GET /marketentities/1/edit
  def edit
    @marketentity = Marketentity.find(params[:id])
  end

  # POST /marketentities
  # POST /marketentities.xml
  def create
    @marketentity = Marketentity.new(params[:marketentity])

    respond_to do |format|
      if @marketentity.save
        format.html { redirect_to(@marketentity, :notice => 'Marketentity was successfully created.') }
        format.xml  { render :xml => @marketentity, :status => :created, :location => @marketentity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @marketentity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marketentities/1
  # PUT /marketentities/1.xml
  def update
    @marketentity = Marketentity.find(params[:id])

    respond_to do |format|
      if @marketentity.update_attributes(params[:marketentity])
        format.html { redirect_to(@marketentity, :notice => 'Marketentity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @marketentity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marketentities/1
  # DELETE /marketentities/1.xml
  def destroy
    @marketentity = Marketentity.find(params[:id])
    @marketentity.destroy

    respond_to do |format|
      format.html { redirect_to(marketentities_url) }
      format.xml  { head :ok }
    end
  end
end
