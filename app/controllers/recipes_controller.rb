class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_random_recipe
    @recipe = Recipe.all.sample
      respond_to do |format|
        format.html { redirect_to recipes_url }
        format.json { render :show, status: :ok, location: @recipe }
    end
  end

# POST /recipes/1/add_tag
  def add_tag
    @recipe = Recipe.find(params[:id])
    # Check to see if the tag's name exists yet, and if so, use that tag id
    tag_name_string_from_user = params[:tag][:name]
    @tag = Tag.find_or_create_by(name: tag_name_string_from_user)
    @recipe.tags << @tag
    render 'show.html.erb'
  end

  def add_rating
    @recipe = Recipe.find(params[:id])
    # @rating = params[:rating]
    @rating = Rating.new(rating: params[:rating])
    @recipe.ratings << @rating
    @recipe.save
    render 'show.html.erb'
  end

  # def order_by_rating
  #   @recipes = Recipe.all
  #   @recipes.order(recipe.ratings.average(:rating).round(1))
  #
  #   if !recipe.ratings.empty?
  #       recipe.ratings.average(:rating).round(1)
  #   else
  #       puts "Not yet rated"
  #   end
  #   render 'index.html.erb'
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :author, :ingredients, :instructions, :image)
    end
end
