class SubledgersController < ApplicationController
  # GET /subledgers
  # GET /subledgers.xml
  def index
    @subledgers = Subledger.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subledgers }
    end
  end

  # GET /subledgers/1
  # GET /subledgers/1.xml
  def show
    @subledger = Subledger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subledger }
    end
  end

  # GET /subledgers/new
  # GET /subledgers/new.xml
  def new
    @subledger = Subledger.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subledger }
    end
  end

  # GET /subledgers/1/edit
  def edit
    @subledger = Subledger.find(params[:id])
  end

  # POST /subledgers
  # POST /subledgers.xml
  def create
    @subledger = Subledger.new(params[:subledger])

    respond_to do |format|
      if @subledger.save
        format.html { redirect_to(@subledger, :notice => 'Subledger was successfully created.') }
        format.xml  { render :xml => @subledger, :status => :created, :location => @subledger }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subledger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subledgers/1
  # PUT /subledgers/1.xml
  def update
    @subledger = Subledger.find(params[:id])

    respond_to do |format|
      if @subledger.update_attributes(params[:subledger])
        format.html { redirect_to(@subledger, :notice => 'Subledger was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subledger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subledgers/1
  # DELETE /subledgers/1.xml
  def destroy
    @subledger = Subledger.find(params[:id])
    @subledger.destroy

    respond_to do |format|
      format.html { redirect_to(subledgers_url) }
      format.xml  { head :ok }
    end
  end
end
