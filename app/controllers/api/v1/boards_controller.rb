class BoardsController < ApplicationController
    before_action :set_board, only: [:show,:update,:destroy]

  def index
    boards = board.all
    render json: boards, status: 200
  end

  def create
    board = board.create(board_params)
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
    @board = board.find(params[:id])
  end
end

end
