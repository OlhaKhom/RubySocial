class ModifyTopics < ActiveRecord::Migration[6.1]
    def change
      add_index :topics, :alias, unique: true
Topic.create :alias => "cats", :title =>"Cats"
Topic.create :alias => "dogss", :title =>"Dogs"
Topic.create :alias => "fishes", :title =>"Fishes"
Topic.create :alias => "hamsters", :title =>"Hamsters"
Topic.create :alias => "turtles", :title =>"Turtles"
      end
    end