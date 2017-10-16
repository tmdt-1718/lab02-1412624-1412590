# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Message.delete_all
FriendList.delete_all
#fill user table
(0..5).each do |index|
    User.create!(email:"checker#{index}@gmail.com",password: "checker#{index}",name: "Nguyen #{index}");
    Message.create!(id_receiver: index,content: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis, vel.',    id_sender: 5-index,time_send: '2017-10-01',time_read: ' ',status: false);
    Message.create!(id_receiver: index,content: 'Amet consectetur adipisicing elit.',    id_sender: 5-index,time_send: '2017-10-04',time_read: ' ',status: false);
    FriendList.create!(id_user: index ,id_friend: 5 % (index+1));
    FriendList.create!(id_user: index ,id_friend: 5 % (index+2));
    FriendList.create!(id_user: index ,id_friend: 5 % (index+3));
end