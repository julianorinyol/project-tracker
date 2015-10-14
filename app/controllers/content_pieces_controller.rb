class ContentPiecesController < ApplicationController
  before_action :set_content_piece, only: [:show, :edit, :update, :destroy]

  # GET /content_pieces
  # GET /content_pieces.json
  def index
    @content_pieces = ContentPiece.all
  end

  # GET /content_pieces/1
  # GET /content_pieces/1.json
  def show
  end

  # GET /content_pieces/new
  def new
    @content_piece = ContentPiece.new
  end

  # GET /content_pieces/1/edit
  def edit
  end

  # POST /content_pieces
  # POST /content_pieces.json
  def create
    @content_piece = ContentPiece.new(content_piece_params)

    respond_to do |format|
      if @content_piece.save
        format.html { redirect_to @content_piece, notice: 'Content piece was successfully created.' }
        format.json { render :show, status: :created, location: @content_piece }
      else
        format.html { render :new }
        format.json { render json: @content_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_pieces/1
  # PATCH/PUT /content_pieces/1.json
  def update
    respond_to do |format|
      if @content_piece.update(content_piece_params)
        format.html { redirect_to @content_piece, notice: 'Content piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_piece }
      else
        format.html { render :edit }
        format.json { render json: @content_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_pieces/1
  # DELETE /content_pieces/1.json
  def destroy
    @content_piece.destroy
    respond_to do |format|
      format.html { redirect_to content_pieces_url, notice: 'Content piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_piece
      @content_piece = ContentPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_piece_params
      params[:content_piece]
    end
end
