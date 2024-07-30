Stylist.create(name: 'Koji', featured: true, profile: 'Experienced stylist specializing in modern cuts.',
               profile_image: Rails.root.join('app/assets/images/default_profile_image.jpg').open)
Review.create(stylist: Stylist.first, content: 'Great haircut and service!', rating: 5)
Style.create(description: 'Modern and sleek haircut',
             image: Rails.root.join('app/assets/images/default_style_image.jpg').open, trending: true)
