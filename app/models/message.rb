class Message < ApplicationRecord
  validates :message, presence: true
  # createの後にコミットする { MessageBroadcastJobのperformを遅延実行 引数はself }
  after_create_commit { MessageBroadcastJob.perform_later self }
	belongs_to :user, optional: true
	belongs_to :shop, optional: true
	belongs_to :room
end
