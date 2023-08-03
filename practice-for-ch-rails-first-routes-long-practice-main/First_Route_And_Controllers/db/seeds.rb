# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
Artwork.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('artworks')

User.create!([{
    username:'Millie B Brown'
    },

    {
    username:'Justin Bieber'
    },
    
    {
    username:'Big Wayne'
}])

Artwork.create!([{
    image_url: 'https://media.voguebusiness.com/photos/61b8dfb99ba90ab572dea0bd/2:3/w_2560%2Cc_limit/adidas-nft-voguebus-adidas-nft-dec-21-story.jpg',
    title: 'Bored Ape',
    artist_id: 1
    },

    {
    image_url: 'https://airnfts.s3.amazonaws.com/nft-images/20210814/Cyberpunk_001_1628933289447.png',
    title: 'Cyberpunk',
    artist_id: 2
    },

    {
    image_url: 'https://mediaserver.responsesource.com/press-release/tb_lrg/136827/1_King.png',
    title: 'Crocs',
    artist_id: 2
    },

    {
    image_url: 'https://99designs-blog.imgix.net/blog/wp-content/uploads/2021/05/merlin_184196631_939fb22d-b909-4205-99d9-b464fb961d32-superJumbo.jpeg?auto=format&q=60&fit=max&w=930',
    title: 'The First 5000 Days',
    artist_id: 3
    },

    {
    image_url: 'https://pbs.twimg.com/media/FtceqGzaAAcHGxB?format=jpg&name=large',
    title: 'Space Runners',
    artist_id: 3
    },

    {
    image_url: 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/bold-and-brash-squidward.jpg',
    title: 'Squidward',
    artist_id: 3
    }
])

ArtworkShare.create!([{
    viewer_id: 1,
    artwork_id: 2
    },
    {
    viewer_id: 2,
    artwork_id: 5
    },
    {
    viewer_id: 2,
    artwork_id: 1
    },
])

#might need to seed joins table