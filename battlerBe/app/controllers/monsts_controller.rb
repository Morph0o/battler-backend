class MonstsController < ApplicationController

def index
    monsts = Monst.all 
    render json: monsts.to_json(:include => [:monstmoves])
end




private

def serialization


end
end
