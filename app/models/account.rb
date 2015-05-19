class Account < ActiveRecord::Base
	belongs_to :user

	def self.dashboard(current_user)
		data = Account.select("kind,sum(expense) as total").where({ user: current_user }).group("kind")
		data.map{ |d| [ d.kind, d.total ] }
	end
end
