class BusinessunitsController < ApplicationController
  # GET /businessunits
  # GET /businessunits.xml
  def index
    @businessunits = Businessunit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @businessunits }
    end
  end

  # GET /businessunits/1
  # GET /businessunits/1.xml
  def show
    @businessunit = Businessunit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @businessunit }
    end
  end

  # GET /businessunits/new
  # GET /businessunits/new.xml
  def new
    @businessunit = Businessunit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @businessunit }
    end
  end

  # GET /businessunits/1/edit
  def edit
    @businessunit = Businessunit.find(params[:id])
  end

  # POST /businessunits
  # POST /businessunits.xml
  def create
    @businessunit = Businessunit.new(params[:businessunit])

    respond_to do |format|
      if @businessunit.save
        format.html { redirect_to(@businessunit, :notice => 'Businessunit was successfully created.') }
        format.xml  { render :xml => @businessunit, :status => :created, :location => @businessunit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @businessunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /businessunits/1
  # PUT /businessunits/1.xml
  def update
    @businessunit = Businessunit.find(params[:id])

    respond_to do |format|
      if @businessunit.update_attributes(params[:businessunit])
        format.html { redirect_to(@businessunit, :notice => 'Businessunit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @businessunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /businessunits/1
  # DELETE /businessunits/1.xml
  def destroy
    @businessunit = Businessunit.find(params[:id])
    @businessunit.destroy

    respond_to do |format|
      format.html { redirect_to(businessunits_url) }
      format.xml  { head :ok }
    end
  end
end
