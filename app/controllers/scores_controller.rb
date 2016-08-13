class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :update, :destroy]

  # GET /scores
  def index
    @scores = Score.all

    render json: @scores
  end

  # GET /scores/1
  def show
    render json: @score
  end

  # POST /scores
  def create
    @score = Score.new(score_params)

    if @score.save
      render json: @score, status: :created, location: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scores/1
  def update
    if @score.update(score_params)
      render json: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scores/1
  def destroy
    @score.destroy
  end

  def high_scores
    render json: get_high_scores
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    def get_high_scores
      all_scores = Score.all
      sorted_scores = all_scores.sort_by(&:player_score).reverse
      sorted_scores.first(5).to_json
    end

    # Only allow a trusted parameter "white list" through.
    def score_params
      params.fetch(:score, {})
    end
end
