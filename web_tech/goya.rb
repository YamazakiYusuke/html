# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  input1 = cgi['input1']
  # get1 = cgi['goya1']
  # input2 = cgi['input2']
  # get2 = cgi['goya2']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>受け取った文字列は下記になります</p>
      <p>文字列：#{input1}</p>
    </body>
  </html>"

  # "<html>
  #   <body>
  #     <p>ゴーヤの大きさと売った相手の情報は下記になります</p>
  #     文字列：#{get1}
  #   </body>
  # </html>"

  # "<html>
  # <body>
  #   <p>自家消費以外のゴーヤの情報</p>
  #   <p>文字列：#{input2}</p>
  # </body>
  # </html>"

  # "<html>
  #   <body>
  #     <p>品質が悪いもゴーヤの情報</p>
  #     文字列：#{get2}
  #   </body>
  # </html>"

}
