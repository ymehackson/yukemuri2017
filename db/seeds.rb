# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create!([{name: "libre",
              description: "リーブルはいろんな活動を通じて友達の輪を広げることを目的としたオールラウンドサークルです。まだ設立したばかりなのでみんな打ち解けやすいです",
              contact:"example@gmail.com",
              location:"東京都",
              image: "example@railstutorial.org",
              real_type: 1},
               {name: "学さる",
              description: "春は、旅行に球技大会
夏は、海水浴にお祭り
秋は、運動会に食い倒れ会
冬は、スノボにクリパ


スノボサークルを謳ってはいますが...

スキーやソリを楽しむ人
ゲレンデ活動には来ない人
飲み会だけ来る人...

サークルの楽しみ方は人それぞれ♪

さぁ、新しい仲間学生生活を満喫しよう！
",
              contact:"example@gmail.com",
              location:"東京都、長野県",
              image: "example@railstutorial.org",
              real_type: 1,
}, {name: "APPLE",
              description: "月に2回の活動と一回のミーティングを行ってます。季節に合ったイベントやみんなでお出かけしたりしてます。",
              contact:"example@gmail.com",
              location:"神奈川県",
              image: "example@railstutorial.org",
              real_type: 1,
}, {name: "ぐるはん",
              description: "当サークルはグルメハンティング、略して「ぐるはん」という名前のとおり、未知のお店に行っていいお店を発掘・開拓することを目的としたインカレ団体です(´∀｀*)
学生であれば誰でも歓迎するという信念を持って運営しており、内輪で固まるといったこともありませんので、安心してご参加頂けると思います！
大学・学年は一切入会条件に含みません！
ただいま積極的にメンバーを募集しておりますので、興味があれば是非ご一報ください♪
",
              contact:"example@gmail.com",
              location:"東京都",
              image: "example@railstutorial.org",
              real_type: 1,
}, {name: "muy bien",
              description: "大人数での飲み会から、少人数でのカフェ巡りまで、大小様々な規模の活動が充実！
サークル内にカフェ部、グルメ部といった部活動もあり、より専門的に楽しむことが出来ます。
初詣や花火大会、クリスマスパーティなどの季節のイベントはもちろん、ソフトボール大会やリアル脱出ゲーム、ディズニーランドなどの人気企画も目白押しです。

昨年度の活動実績は、年間50回以上！つまり、1週間に1回の企画があります。すべての企画は参加自由なので、好きなときに、好きな企画に参加すれば大丈夫。
",
              contact:"example@gmail.com",
              location:"東京都",
              image: "example@railstutorial.org",
              real_type: 1,
}])

Category.create!([{
        A:"少人数",
        B:"多人数",
        name:"人数"}]
)

GroupCategory.create!([{
        group_id:"1",
        master_id:"1",
        score:"A"
      },
       {group_id:"2",
        master_id:"1",
      score:"A"},
                       {group_id:"3",
                        master_id:"1",
                        score:"B"},
                       {group_id:"4",
                        master_id:"1",
                        score:"B"},
                       {group_id:"5",
                        master_id:"1",
                        score:"B"},
])