class CongressmenController < ApplicationController
  # GET /congressmen
  # GET /congressmen.xml
  def index
    @congressmen = Congressman.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @congressmen }
    end
  end

  # GET /congressmen/1
  # GET /congressmen/1.xml
  def show
    @congressman = Congressman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @congressman }
    end
  end

  # GET /congressmen/new
  # GET /congressmen/new.xml
  def new
    @congressman = Congressman.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @congressman }
    end
  end

  # GET /congressmen/1/edit
  def edit
    @congressman = Congressman.find(params[:id])
  end

  # POST /congressmen
  # POST /congressmen.xml
  def create
    @congressman = Congressman.new(params[:congressman])

    respond_to do |format|
      if @congressman.save
        flash[:notice] = 'Congressman was successfully created.'
        format.html { redirect_to(@congressman) }
        format.xml  { render :xml => @congressman, :status => :created, :location => @congressman }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @congressman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /congressmen/1
  # PUT /congressmen/1.xml
  def update
    @congressman = Congressman.find(params[:id])

    respond_to do |format|
      if @congressman.update_attributes(params[:congressman])
        flash[:notice] = 'Congressman was successfully updated.'
        format.html { redirect_to(@congressman) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @congressman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /congressmen/1
  # DELETE /congressmen/1.xml
  def destroy
    @congressman = Congressman.find(params[:id])
    @congressman.destroy

    respond_to do |format|
      format.html { redirect_to(congressmen_url) }
      format.xml  { head :ok }
    end
  end
end
