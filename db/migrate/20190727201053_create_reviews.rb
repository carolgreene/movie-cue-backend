class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.text :reviewer_name
      t.text :review_title
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
