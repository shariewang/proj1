class PokemonsController < ApplicationController
	def capture
		p = Pokemon.find(params[:id])
		p.trainer = current_trainer 
		p.save 
		redirect_to('/')
	end

	def damage
		p = Pokemon.find(params[:id])
		p.health = p.health - 10 
		tid = p.trainer_id
		p.save
		if p.health <= 100
			p.destroy
		end 
		redirect_to(trainer_path(id: tid))
	end 

	def new 
	end

	def create 
		p = Pokemon.create 
		p.health = 100 
		p.level = 1 
		p.trainer = current_trainer
		p.name = params[:pokemon][:name] 
		p.ndex = params[:pokemon][:ndex]
		if p.save
			redirect_to(trainer_path(id: current_trainer))
		else 
			redirect_to(new_path)
			flash[:error] = p.errors.full_messages.to_sentence
		end
		
	end
end
