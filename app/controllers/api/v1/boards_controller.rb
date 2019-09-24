class Api::V1::BoardsController < ApplicationController
    before_action :set_board, only: [:show,:update,:destroy]

  def index
    # boards = Board.all
    boards = Board.where("user_id = ?", params[:user_id])
    render json: boards, status: 200
  end

  def create
    board = Board.create(board_params)
    render json: board, status: 201
  end

  def update
    @board.update(board_params)
    render json: @board, status: 200
  end

  def destroy
    boardId = @board.id
    @board.destroy
    render json: {message:"Board Deleted!", boardId:boardId}
  end

  def show
    render json: @board, status: 200
  end

  private
  def board_params
    params.require(:board).permit(:title, :user_id)
  end

  def set_board
    @board = Board.find(params[:id])
  end
end


