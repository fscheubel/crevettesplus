class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]
  before_action :set_menu

  # GET /menu_items
  # GET /menu_items.json
  def index
    @menu_items = @menu.menu_items
  end

  # GET /menu_items/1
  # GET /menu_items/1.json
  def show
  end

  # GET /menu_items/new
  def new
    @menu_item = MenuItem.new
  end

  # GET /menu_items/1/edit
  def edit
  end

  # POST /menu_items
  # POST /menu_items.json
  def create
    @menu_item = @menu.menu_items.build(menu_item_params)

    respond_to do |format|
      if @menu_item.save
        format.html { redirect_to @menu_item, notice: 'Menu item was successfully created.' }
        format.js {}
        format.json { render :show, status: :created, location: @menu_item }
      else
        format.html { render :new }
        format.js {}
        format.json { render json: @menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_items/1
  # PATCH/PUT /menu_items/1.json
  def update
    respond_to do |format|
      if @menu_item.update(menu_item_params)
        format.html { redirect_to @menu_item, notice: 'Menu item was successfully updated.' }
        format.js {}
        format.json { render :show, status: :ok, location: @menu_item }
      else
        format.html { render :edit }
        format.js {}
        format.json { render json: @menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_items/1
  # DELETE /menu_items/1.json
  def destroy
    @menu_item.destroy
    respond_to do |format|
      format.html { redirect_to menu_menu_items_path(@menu), notice: 'Menu item was successfully destroyed.' }
      format.js {}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def set_menu
      if params[:menu_id]
        @menu = Menu.find(params[:menu_id])
      else
        @menu = @menu_item.menu
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_item_params
      params.require(:menu_item).permit(:menu_id, :name, :description, :price)
    end
end
