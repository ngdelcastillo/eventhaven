class SupplierTypesController < ApplicationController
  # GET /supplier_types
  # GET /supplier_types.json
  def index
    @supplier_types = SupplierType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_types }
    end
  end

  # GET /supplier_types/1
  # GET /supplier_types/1.json
  def show
    @supplier_type = SupplierType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplier_type }
    end
  end

  # GET /supplier_types/new
  # GET /supplier_types/new.json
  def new
    @supplier_type = SupplierType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_type }
    end
  end

  # GET /supplier_types/1/edit
  def edit
    @supplier_type = SupplierType.find(params[:id])
  end

  # POST /supplier_types
  # POST /supplier_types.json
  def create
    @supplier_type = SupplierType.new(params[:supplier_type])

    respond_to do |format|
      if @supplier_type.save
        format.html { redirect_to @supplier_type, notice: 'Supplier type was successfully created.' }
        format.json { render json: @supplier_type, status: :created, location: @supplier_type }
      else
        format.html { render action: "new" }
        format.json { render json: @supplier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplier_types/1
  # PUT /supplier_types/1.json
  def update
    @supplier_type = SupplierType.find(params[:id])

    respond_to do |format|
      if @supplier_type.update_attributes(params[:supplier_type])
        format.html { redirect_to @supplier_type, notice: 'Supplier type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_types/1
  # DELETE /supplier_types/1.json
  def destroy
    @supplier_type = SupplierType.find(params[:id])
    @supplier_type.destroy

    respond_to do |format|
      format.html { redirect_to supplier_types_url }
      format.json { head :no_content }
    end
  end
end
