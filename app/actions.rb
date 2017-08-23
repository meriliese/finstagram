def humanized_time_ago(time_ago_in_minutes)
    #if the time_ago_in_minutes is more than 60
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
        
    else
        "#{time_ago_in_minutes} minutes ago"
        
    end
end

get '/' do
    @post_Ali = {
        username: "Ali",
        avatar_url: "http://s3.amazonaws.com/factmag-images/wp-content/uploads/2016/06/04163548/ali.jpg",
        photo_url: "http://img.wennermedia.com/920-width/rs-225613-13-with-muhammad-ali.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count:  0,
        comment_count: 1,
        comments: [{
            username: "Ali",
            text: "I hated every minute of training. But I said don't quit, suffer now and live the rest of your life as a champion."
        }]
    }    
    
    @post_Tyson = {
        username: "Kid Dynamite",
        avatar_url: "https://ombyum.files.wordpress.com/2014/03/revisiting-young-mike-tyson1537105053-jul-19-2012-600x400.jpg",
        photo_url: "http://static.boxrec.com/thumb/c/c9/MikeTysonBerbick2.jpg/410px-MikeTysonBerbick2.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Kid Dynamite",
            text: "Protect yourself at all times."
        }]
    }

    @post_Money = {
        username: "Money May",
        avatar_url: "http://i3.mirror.co.uk/incoming/article4926299.ece/ALTERNATES/s615/Floyd-Mayweather.jpg",
        photo_url: "http://www.newsflash.org/2004/02/00001/0001012887.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "Money May",
            text: "Hard work. Dedication."
        }]
    }
    
    [@post_Ali, @post_Tyson, @post_Money].to_s
    
    @posts = [@post_Ali, @post_Tyson, @post_Money]
    
    erb (:index)
end

