Category.destroy_all

Category.create(name: "Smartphones", public: rand(0..1), parent_category_id: nil) 
Category.create(name: "Shoes", public: rand(0..1), parent_category_id: nil)
Category.create(name: "Accesories", public: rand(0..1), parent_category_id: nil)
Category.create(name: "Food", public: rand(0..1), parent_category_id: nil)