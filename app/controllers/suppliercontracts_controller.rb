class SuppliercontractsController < ApplicationController
  # GET /suppliercontracts
  # GET /suppliercontracts.xml
  def index
    @suppliercontracts = Suppliercontract.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @suppliercontracts }
    end
  end

  # GET /suppliercontracts/1
  # GET /suppliercontracts/1.xml
  def show
    @suppliercontract = Suppliercontract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @suppliercontract }
    end
  end

  # GET /suppliercontracts/new
  # GET /suppliercontracts/new.xml
  def new
    @suppliercontract = Suppliercontract.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @suppliercontract }
    end
  end

  # GET /suppliercontracts/1/edit
  def edit
    @suppliercontract = Suppliercontract.find(params[:id])
  end

  # POST /suppliercontracts
  # POST /suppliercontracts.xml
  def create
    @suppliercontract = Suppliercontract.new(params[:suppliercontract])

    respond_to do |format|
      if @suppliercontract.save
        format.html { redirect_to(@suppliercontract, :notice => 'Suppliercontract was successfully created.') }
        format.xml  { render :xml => @suppliercontract, :status => :created, :location => @suppliercontract }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @suppliercontract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /suppliercontracts/1
  # PUT /suppliercontracts/1.xml
  def update
    @suppliercontract = Suppliercontract.find(params[:id])

    respond_to do |format|
      if @suppliercontract.update_attributes(params[:suppliercontract])
        format.html { redirect_to(@suppliercontract, :notice => 'Suppliercontract was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @suppliercontract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliercontracts/1
  # DELETE /suppliercontracts/1.xml
  def destroy
    @suppliercontract = Suppliercontract.find(params[:id])
    @suppliercontract.destroy

    respond_to do |format|
      format.html { redirect_to(suppliercontracts_url) }
      format.xml  { head :ok }
    end
  end
end
