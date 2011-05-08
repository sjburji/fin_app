class LegalentitiesController < ApplicationController
  # GET /legalentities
  # GET /legalentities.xml
  def index
    @legalentities = Legalentity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @legalentities }
    end
  end

  # GET /legalentities/1
  # GET /legalentities/1.xml
  def show
    @legalentity = Legalentity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @legalentity }
    end
  end

  # GET /legalentities/new
  # GET /legalentities/new.xml
  def new
    @legalentity = Legalentity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @legalentity }
    end
  end

  # GET /legalentities/1/edit
  def edit
    @legalentity = Legalentity.find(params[:id])
  end

  # POST /legalentities
  # POST /legalentities.xml
  def create
    @legalentity = Legalentity.new(params[:legalentity])

    respond_to do |format|
      if @legalentity.save
        format.html { redirect_to(@legalentity, :notice => 'Legalentity was successfully created.') }
        format.xml  { render :xml => @legalentity, :status => :created, :location => @legalentity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @legalentity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /legalentities/1
  # PUT /legalentities/1.xml
  def update
    @legalentity = Legalentity.find(params[:id])

    respond_to do |format|
      if @legalentity.update_attributes(params[:legalentity])
        format.html { redirect_to(@legalentity, :notice => 'Legalentity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @legalentity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /legalentities/1
  # DELETE /legalentities/1.xml
  def destroy
    @legalentity = Legalentity.find(params[:id])
    @legalentity.destroy

    respond_to do |format|
      format.html { redirect_to(legalentities_url) }
      format.xml  { head :ok }
    end
  end
  
end
