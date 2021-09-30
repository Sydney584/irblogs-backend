# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Blogpost.destroy_all
Comment.destroy_all

    user1 = User.create!(
        {first_name: 'Sydney', last_name: 'Chase', user_name: 'Indi', email: 'theindigoroom2@gmail.com'}
        )
    user2 = User.create!(
        {first_name: 'Jennifer', last_name: 'Johnson', user_name: 'JenJohn', email: 'jenjon@emailexample.com'}
        )
    user3 = User.create!(
        {first_name: 'Bob', last_name: 'Daily', user_name: 'Beeto', email: 'beeto@emailexample.com'}
        )
    user4 = User.create!(
        {first_name: 'Yvonne', last_name: 'Gist', user_name: 'Vonnie', email: 'vonie@emailexample.com'}
        )

blogpost1 = Blogpost.create!(
    {title: 'Keep on Moving', content: 'Sometimes you may feel like nothing is working and you just want to give up. Don"t! Keep on Moving toward"s your goal.', img_url: 'https://sydneychase.files.wordpress.com/2012/04/steven-flying.jpg', user_id: user1.id}
)
blogpost2 = Blogpost.create!(
    {title: 'Meditation is My Number One', content: 'I started out meditating for just 5 minutes each day. And I found that helped me. As I got better at it, I increased the time each day by 5 minutes. Now 5 years later I can meditate for one hour at a time!', img_url: 'https://sydneychase.files.wordpress.com/2015/03/meditation-1.jpg', user_id: user2.id}
)
blogpost3 = Blogpost.create!(
    {title: 'The Only Constant is Change!', content: 'You can remain stubborn, stuck in your ways and resistant to change. I used to be like that. I chose a different path a long time ago. Change is good. ', img_url: 'https://sydneychase.files.wordpress.com/2015/03/740b5598d602be7c8f6fd162391aa1b7.jpg', user_id: user4.id}
)
blogpost4 = Blogpost.create!(
    {title: 'Energy Crisis Looming', content: 'Sometimes you have to pay attention to what is going on around you. There is an energy crisis creeping upon us and no one I know is paying attention. How are you going to stay warm this winter? Do you know how to stay warm should we have another energy gridlock? Check out all of my blogs for helpful tips on traversing the loss of power. As we say in the North, Winter is coming. Are you ready?', img_url: 'https://sydneychase.files.wordpress.com/2012/04/lightening_1.png', user_id: user3.id}
)

comment1 = Comment.create!(
    {content: 'I really get what you are saying. It is true sometimes things have to fall apart to come back together. Like that song, Keep on Moving. I love that song.', blogpost_id: blogpost1.id, user_id: user1.id}
)
comment2 = Comment.create!(
    {content: 'Sometimes I get tired of moving so much lol!', blogpost_id: blogpost1.id, user_id: user2.id}
)
comment3 = Comment.create!(
    {content: 'Sometimes you should stop and smell the roses just allow yourself to breath, smell the roses of course. And then keep going!', blogpost_id: blogpost1.id, user_id: user1.id}
)
comment4 = Comment.create!(
    {content: 'Ugh meditating is so hard for me. I always fall asleep!', blogpost_id: blogpost2.id, user_id: user3.id}
)
comment = Comment.create!(
    {content: 'I really think we are in for a hell of a Winter this year!!!', blogpost_id: blogpost4.id, user_id: user4.id}
)


puts "User, Blogpost, Comment & Et all seeded"

puts "Seeded"