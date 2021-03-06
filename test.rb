
# find: findメソッドはレシーバに指定した範囲オブジェクトの各要素を順番にブロックに渡し、ブロックで評価した結果が最初に真になった要素を返します。
puts '----------- 3行目 -----------'
p((0...10).find {|i| i > 10 }) # => nil
p((0...10).find {|i| i < 10 }) # => 0
puts '------------ END ------------'

# select: selectメソッドはレシーバに指定した範囲オブジェクトの各要素を順番にブロックに渡し、ブロックで評価した結果が真になった全ての要素を返します。
puts '----------- 9行目 -----------'
p((0...10).select {|i| i % 2 == 0}) # => [0, 2, 4, 6, 8]
puts '------------ END ------------'

# scan: scanメソッドはレシーバに指定された文字列オブジェクトが、引数に指定されたパターンにマッチするかを繰り返し確かめます。そして、マッチした文字列を各要素とした配列オブジェクトを返します。
puts '----------- 14行目 -----------'
puts("abcdefghijklmnopqrstuvwxyz".scan(/.{3}/))
puts '------------ END ------------'

# gsub: gsubメソッドはgsubメソッドをブロック付きメソッド呼出しをした場合は、引数に指定したパターンにマッチしたすべての文字列を、ブロックで評価した結果によって置き換えます。
puts '----------- 18行目 -----------'
puts("abcdefghijklmnopqrstuvwxyz".gsub(/.{3}/) {|s| s.upcase })
puts '------------ END ------------'

# split: メソッドはレシーバに指定した文字列オブジェクトを、第1引数に指定したパターンによって分割をおこない、それらを要素とした配列オブジェクトを返します。第2引数に指定した数値オブジェクトは、分割した後の要素数です。
puts '----------- 22行目 -----------'
puts("abcdefghijklmnopqrstuvwxyz".split(//, 3))
puts '------------ END ------------'

# match: matchメソッドはレシーバに指定した文字列オブジェクトが引数に指定したパターンにマッチするかを確かめます。そして、最初にマッチした文字列をMatchDataオブジェクトとして返します。
puts '----------- 28行目 -----------'
puts("abcdefghijklmnopqrstuvwxyz".match(/.{3}/))
puts '------------ END ------------'

# 正規表現のメソッド =~ 。正規表現と文字列をマッチさせる。両辺を入れ替えても機能します。 https://goworkship.com/magazine/ruby-beginner-mistakes/
# trueではなく、最初にマッチした位置が返ってくる
#「$&」にはマッチングした全体の文字列、「$1」にはマッチングしたひとつ目のグループ、「$2」にはマッチングしたふたつ目のグループ、「$3」には……というように、マッチングの結果が格納されるのです。
puts '----------- 33行目 -----------'
p /[^P|p]rogramming/ =~ ("Arogramming") # => 0
p $&
puts '------------ END ------------'

# delete: 文字列オブジェクトのdeleteメソッドは、引数に指定した文字がレシーバに指定した文字列オブジェクトに含まれていれば、その文字を取り除いた新しい文字列オブジェクトを作成して返します。
puts '----------- 42行目 -----------'
p "abcde-fghijklmno-pqrstuv-wxyz".delete("f-u-")
puts '------------ END ------------'

# chomp: 引数に空文字列 ("") を指定した場合は「パラグラフモード」になり、実行環境によらず末尾の連続する改行コード("\r\n", "\n")をすべて取り除きます。
# chop: 文字列の最後の文字を取り除いた新しい文字列を生成して返します。ただし、文字列の終端が "\r\n" であればその 2 文字を取り除きます。
puts '----------- 46行目 -----------'
str = "foobarbaz\r\n\r\n"
p str.chomp('').chop.chop.reverse
puts '------------ END ------------'


puts '----------- 54行目 -----------'
str = "Ruby"
p str[0..-2].swapcase
puts '------------ END ------------'

# index: 文字列オブジェクトのindexメソッドは、レシーバに指定した文字列オブジェクトが第1引数に指定したパターンにマッチするか左端から右端に向かって探索します。第2引数に数値オブジェクトを指定している時は、指定された数値の位置からパターンにマッチするか探索します。
puts '----------- 59行目 -----------'
p "sheep,hummingbird,rabbit".index(/,/, 10)
puts '------------ END ------------'

# 配列オブジェクトを&演算子で繋げると、両方の配列オブジェクトに含まれている要素からなる新しい配列オブジェクトが返されます。そのため、[1, 2, 3, 4, 5]と[1, 2, 3]の両方に含まれる[1, 2, 3]が返されます。
puts '----------- 64行目 -----------'
ary1 = [1, 2, 3, 4, 5]
ary2 = [1, 2, 3]
p ary1 & ary2
puts '------------ END ------------'

# length: レシーバに指定した配列オブジェクトの要素数を返します。[1, 2, 3, 4, 5]の要素数は5なので5が返され、{:foo => 5}になります。
# clear: レシーバに指定した配列オブジェクトの要素をすべて削除して空にします。[1, 2, 3, 4, 5]は空配列の[]になり、{:foo => []}になります。
# shift: レシーバに指定した配列オブジェクトの先頭の要素を取り除いて返します。[1, 2, 3, 4, 5]の先頭の要素は1なので、{:foo => 1}になります。配列オブジェクトから先頭の要素を削除します。
# first: レシーバに指定した配列オブジェクトの先頭の要素を返します。[1, 2, 3, 4, 5]の先頭の要素は1なので、{:foo => 1}になります。
puts '----------- 71行目 -----------'
p({:foo => [1, 2, 3, 4, 5].length})
p({:foo => [1, 2, 3, 4, 5].first})
p({:foo => [1, 2, 3, 4, 5].shift})
p({:foo => [1, 2, 3, 4, 5].clear})


a = [1, 2, 3, 4, 5]
p a.first
p a

p a.shift
p a

puts '------------ END ------------'

# concat: concatメソッドは破壊的なメソッドなので、引数に指定した配列オブジェクトをレシーバに指定した配列オブジェクトの末尾に連結します。そのため、ary1に代入されている[1, 3, 5]にary2に代入されている[7, 9]が連結されて、ary1に代入されている配列オブジェクトが[1, 3, 5, 7, 9]になります。メソッドの処理が終わった後に、concatメソッドはレシーバに指定されている[1, 3, 5, 7, 9]を返します。
puts '----------- 92行目 -----------'
ary1 = [1, 2, 3, 4, 5]  - [2, 4]
ary2 = [6, 7, 8, 9, 10] & [7, 9]
p ary1.concat(ary2)
puts '------------ END ------------'

# inject: injectメソッドを呼び出した時に引数を指定しない場合は、レシーバに指定した配列オブジェクトの先頭の要素と2番目の要素をブロックに渡して実行します。2回目以降は前回ブロックを実行した結果と次の要素をブロックに渡して実行します。その処理をレシーバに指定した配列オブジェクトの最後の要素まで繰り返します。そして、ブロックが最後に繰り返した処理の結果を返します。
# https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/inject.html
puts '----------- 98行目 -----------'
ary = [1, 2, 3, 4, 5, 6]
p ary.inject {|a, b|  a + b }
puts '------------ END ------------'

# 配列オブジェクトのunshiftメソッドは、引数に指定したオブジェクトをレシーバに指定した配列オブジェクトの要素の先頭に挿入します。
puts '----------- 106行目 -----------'
ary = ["foo", "bar", "baz"]
ary.unshift(ary.first)
p ary
puts '------------ END ------------'


puts '----------- 113行目 -----------'
p [{:foo => 1}, ["bar", 2]].map{|i| i.to_s }.sort
puts '------------ END ------------'

# 数値オブジェクトの左端に0xを付けると16進整数として記述できます。16進数は16を基数とした数で16ごとに桁が繰り上がります。16進数は16までの15の数を表現するために0123456789とABCDEFのアルファベットで数を表現します。つまり10から15までの数をアルファベットのAからFで表現します。0xAのAは10進数に変換すると10です。
# 次の022のように数値オブジェクトの左端に0を付けると8進整数として記述できます。8進数は8を基数とした数で8ごとに桁が繰り上がります。そのため、022は10進数に変換すると18です。
# 最後の0b1010のように数値オブジェクトの左端に0bを付けると2進整数として記述できます。2進数は2を基数とした数で2ごとに桁が繰り上がります。そのため、2進数は0か1で表現します。0b1010は10進数に変換すると10です。これらの数値オブジェクトを+演算子で足すと、10 + 18 + 10で38になります。
puts '----------- 117行目 -----------'
p 0xA + 022 + 0b1010
puts '------------ END ------------'


puts '----------- 125行目 -----------'
ary = [1, 2, 3, 4, 5]
ary.reverse!
p ary[1...-1]
puts '------------ END ------------'

puts '----------- 131行目 -----------'
ary = (-15..-10).to_a
p ary.select {|i| i % 3 == 0 }
puts '------------ END ------------'

# reject: レシーバに指定したハッシュオブジェクトを複製し、複製したハッシュオブジェクトの要素のキーと値をブロックに渡し、ブロックで評価した結果が真であった要素をすべて取り除いたハッシュオブジェクトを返します。
# delete: 引数に指定したキーとレシーバに指定したハッシュオブジェクトの要素のキーが同じならば、レシーバに指定したハッシュオブジェクトの要素から削除し、削除した要素の値を返します。hash.delete(:foo)は{:foo => 1, :bar => 2}からキーが:fooである要素が削除され、要素の値である1が返されます。
# find: レシーバに指定したハッシュオブジェクトの各要素を、キーと値を第1引数と第2引数にした配列オブジェクトとしてブロックに渡し、評価した結果が真であった最初の要素の配列オブジェクトを返します。そのため、hash.find {|i| i.member?(:foo) }はブロックへ順番に[:foo, 1]と[:bar, 2]が渡されます。ブロックへ渡された配列オブジェクトはmember?メソッドを呼び出し、引数に指定した:fooが要素に含まれている場合に真を返します。[:foo, 1]に:fooが要素として含まれているので真が返され、findメソッドは[:foo, 1]を返します。
# dup: レシーバに指定したハッシュオブジェクトを複製して返します。
puts '----------- 136行目 -----------'
hash = {:foo => 1, :bar => 2}
p hash.find {|i| i.member?(:foo) }
p hash.reject {|key, value| key == :foo }
p hash.dup
p hash.delete(:foo)
p hash
puts '------------ END ------------'

# dup
puts '----------- 149行目 -----------'
a = [{:a=>1}, {:b=>2}, {:c=>3}]
b = a
c = b.dup

# ①：object_idの確認
p a.object_id # aのobject_id
p b.object_id # bのobject_id
p c.object_id # cのobject_id

b[0] = {:a=>111}

# ②：値の確認
p a # aの値
p b # bの値
p c # cの値
puts '------------ END ------------'

puts '----------- 168行目 -----------'
class Integer
  def foo
    self + 0.0
  end

  def bar
    self.next
  end
end

num = 1
num = num.integer? ? num.foo : num.bar
p num.class
puts '------------ END ------------'

puts '----------- 184行目 -----------'
# module Foo
#   Bar = "bar"
# end

# class Baz
#   include Foo
# end

# puts Baz::Bar
puts '------------ END ------------'

puts '----------- 196行目 -----------'
o1 = Object.new
o2 = Object.new

if o1.equal?(o2)
  puts("o1")
else
  puts("o2")
end
puts '------------ END ------------'

# Rubyのプログラムが始まると、mainと呼ばれるObjectクラスのインスタンスの中にいます。そのため、Objectクラスを拡張してインスタンスメソッドを定義すると、定義したメソッドをトップレベルで呼び出せます。
puts '----------- 208行目 -----------'
class Object
  def foo
    puts "foo"
  end
end

foo
puts '------------ END ------------'

# Barクラスの定義の中で呼び出しているextendメソッドは、引数に指定したモジュールのインスタンスメソッドを特異メソッドとしてクラスに追加します。ただし、extendメソッドはFooモジュールに定義されている特異メソッドはBarクラスへ追加しません。Fooモジュールにインスタンスメソッドを定義し、extendメソッドによってBarクラスに特異メソッドとして追加されます。
puts '----------- 218行目 -----------'
# module Foo
#   def foo
#     puts("foo")
#   end
# end

# class Bar
#   extend Foo
# end

# Bar.foo
puts '------------ END ------------'

puts '----------- 233行目 -----------'
class Foo
  @@count = 0
 
  def count
    @@count
  end
 
  def increment
    @@count += 1
  end
end
 
class Bar < Foo; end
class Baz < Bar; end
 
baz = Baz.new
baz.increment
bar = Bar.new
bar.increment
foo = Foo.new
p foo.count
puts '------------ END ------------'


puts '----------- 258行目 -----------'
Foo1 = "main"
 
class Bar1
  Foo1 = "foo"
 
  def self.foo
    ::Foo1
  end
end
 
p Bar1.foo
puts '------------ END ------------'


puts '----------- 272行目 -----------'
a = "foo"
b = a
b.slice!(0, 1)
print(a, b, "\n")
puts '------------ END ------------'


puts '----------- 281行目 -----------'
class Foo2
  attr_accessor :foo
end

class Bar2 < Foo2
  def initialize(foo)
    @foo = foo
  end
end

bar = Bar2.new("bar")
puts(bar.foo)
puts '------------ END ------------'


# https://qiita.com/naotospace/items/bd0a5295e540e27936b3
puts '----------- 297行目 -----------'
File.open("hats.txt", "w") do |f|
  f.puts(%w[Bowler Deerstalker Dunce\ cap Fedora Fez])
end

File.open("hats.txt") do |f|
  4.times { f.gets() }
  puts f.gets
  # puts f.readline
end
puts '------------ END ------------'


# Fileオブジェクトを操作している時、Rubyは次に読み込むか、またはデータを挿入するべきかレコードを維持します。ファイルが最初に開かれると、レコードはファイルの先頭を指し示すように設定されます。getsメソッドが呼び出される度、レコードは次の行の先頭に設定されます。
# この問題のプログラムでは、2回呼び出されたgetsメソッドはファイルの3行目の"Kafka"にレコードを設定します。
# 次に、File#lineno=は引数としての数値の0と一緒に呼び出されます。一見したところ、ファイルの最初の行から次のgetsメソッドの呼び出しをおこなうように見えるかもしれません。ただし、そのようにlineno=が動作するということはありません。linenoの値は何回getsメソッドが呼び出されたかを記録しますが、ファイルの指定した行に直接対応していないので、次の読み込み、または書き込みのために位置を設定するのに使うことはできません。
# したがって、レコードはファイルの3行目を指しているのを維持するので、次のgetsの呼び出しは"Kafka"の文字を返す。
# ※ File#lineno=の代わりに、File#rewindメソッドはファイルの先頭の行の位置にレコードを設定するのに使うことができます。
puts '----------- 310行目 -----------'
File.open("authors.txt", "w") do |f|
  f.puts(%w[Kawabata Hemingway Kafka])
end

File.open("authors.txt") do |file|
  2.times { file.readline }
  puts file.lineno
  puts file.readline
end
puts '------------ END ------------'

# File#stat: タイムスタンプ、著作者､アクセス許可などに関する基本的なメタデータを保有しているFile::Statオブジェクトを取得します。
# File::Stat#mtime: ファイルが最後に変更された時間を表しているTimeオブジェクトを返します。
puts '----------- 329行目 -----------'
file = File.open("hello.rb", "w")
stat = file.stat
mtime1 = stat.mtime
file.puts("t data")
file.flush
mtime2 = stat.mtime
puts mtime1 == mtime2
puts  mtime1 < file.mtime
puts '------------ END ------------'

# File.openの第2引数は"w"なので、program.rbを書き込みモードで開くように指定しています。書き込みモードで開かれたファイルは、既存の内容を削除します。
# File.openをブロック付きで呼び出すと、新しいファイルオブジェクトを作成してブロックの中に渡します。ブロックの中でファイルは、ブロックパラメータのfを通して操作することができます。f.putsはファイルに引数の文字列オブジェクトを書きます。そして、ファイルはブロックの実行終了後に自動的に閉じられます。
puts '----------- 342行目 -----------'
File.open("program.rb", "w") do |f|
  f.puts("=begin\n  A Ruby program \n=end")
end
puts '------------ END ------------'


puts '----------- 349行目 -----------'
puts File.class                        #Fileクラス
puts File.stat('program.rb').class     #File::Statオブジェクト

f = File.open('program.rb')
puts f.class                           #Fileオブジェクト
f.close

puts '------------ END ------------'

# File.openメソッドに指定した第2引数はモードの指定です。ファイルが開かれるモードを引数で指定しています。例えば、"a"は常にファイルの末尾へ追加する書き込みモードで開き、"a+"は既存の内容が存在していれば、ファイルの読み書き位置がファイルの末尾になります。"r"を指定するか、モードを指定せずにファイルを開いた時は、読み込みモードで開かれます。
puts '----------- 360行目 -----------'
puts File.read("readme.txt") #=> apples
File.open("readme.txt", "a") do |f|
  f.write(" bananas")
end
puts File.read("readme.txt") #=> apples bananas
puts '------------ END ------------'



puts '----------- 369行目 -----------'
# ["tmp", "tmp/lang",  "tmp/lang/ruby", "tmp/lang/python"].each do |dir|
#   Dir.mkdir(dir)
# end
# # カレントディレクトリの変更 => "tmp/lang"
# Dir.chdir("tmp/lang")

# # 2番目の繰り返しの中で使われたDir#eachメソッドは、ブロックに付属の引数としてディレクトリの中で各エントリを渡します。このディレクトリオブジェクトが表している".“は、現在の作業ディレクトリです。
# # ここで注意する重要なことは、ブロックに渡される値でディレクトリ名の”ruby"と"python"ではない".“と”.."が含まれていることで、言い換えると、現在の作業ディレクトリ、それと親ディレクトリです。
# Dir.new(".").each do |entry|
#   puts entry
#   filename = File.join(entry, "rocking.rb")
#   File.open(filename, "w")
# end
# Dir.rmdir("python")
puts '------------ END ------------'

# File.basename: 引数に文字列オブジェクトのファイル名を指定すると、任意のファイル名までのパスを取り除いたファイル名を返します。ファイル名と拡張子が".“で区切られているファイル名から任意の拡張子を取り除く時に、第2引数として”.*"を指定してFile.basenameを呼び出します。
puts '----------- 388行目 -----------'
["bin/hallo.py", "ola.lua", "/tmp/hej.cpp"].each do |filename|
  puts File.basename(filename, ".*") + ".rb"
end
puts '------------ END ------------'

# IO#readlineメソッドとIO#getsメソッドの両方はファイルから区切り文字が含まれている1行を返します。つまり、p f.readline(“Earth”)は"Mercury\nVenus\nEarth"を返す
# IO#readメソッドはオプションの数値の引数を受け取るので、どのぐらいのバイトをファイルから読み込むべきか指定します。この引数が定義されていない場合、IO#readはファイルの末尾まで読み込みます。この場合、IO#readは最初にファイルから3バイトを読み込むので、つまり"Mer"です。
# IO#readlinesはファイル全体を読み取ってから配列を返すので、各要素はファイルの行を表している文字列です。
puts '----------- 395行目 -----------'
# 太陽系の惑星のリストの内容を持つファイルを作成する
File.open("planets.txt", "w") do |f|
  f.puts(%w[Mercury Venus Earth Mars Jupiter Uranus Neptune])
end
f = File.open("planets.txt")
# p f.gets("Mars")
# p f.read(3)
p f.readlines("Venus")
# p f.readline("Earth")
puts '------------ END ------------'


# IO#writeは必要ならば引数を文字列に変換をおこない、レシーバに指定されたIOストリーム、この場合はFileオブジェクトに書き込みます。
# IO#putsはIO#writeと同じように動作しますが、IO#putsは出力した文字列に改行文字が含まれてなければ改行文字を追加します。また、引数として配列が指定された場合、IO#putsは配列の各要素で呼び出されたように動作します。
puts '----------- 411行目 -----------'
File.open("fancy.txt", "w") do |f|
  f.puts("R u b y\n")
  f.puts(["u","b","y"])
end
puts File.read("fancy.txt")
puts '------------ END ------------'


# File.joinメソッドは任意の数の引数の文字列からファイル名とファイル名に至るまでのパスを生成するために使われます。引数はOSに依存するパスセパレータとして定義されたFile::SEPARATOR定数で繋げられます。そして、ファイル名が文字列オブジェクトとして返されます。
puts '----------- 421行目 -----------'
p File.join("pocahontas", "tepee.rb")
puts '------------ END ------------'

# File.splitはディレクトリ部分とファイル部分に文字列オブジェクトの引数を分割し、両方から末尾のスラッシュを取り除きます。2つの部分は2つの要素を持つ1つの配列として返されます。問題のプログラムでは、配列の[“/home/john”, “bookmarks”]が返されます。
# File.joinメソッドは任意の数の文字列オブジェクトの引数からパスを生成することに使用されています。引数はOSに依存するパスセパレータとして定義されたFile::SEPARATOR定数と一緒に繋げられます。
# だから、この問題のコードでは、joinメソッドはFile.splitの返した値である配列で呼ばれています。つまりArray#joinが呼び出され、File.joinではありません。Array#joinは配列の要素に文字列を単純に連結する
puts '----------- 428行目 -----------'
p File.split("/home/john/bookmarks/").join
puts '------------ END ------------'


# each_slice: 引数に指定した数値オブジェクトの値ごとにレシーバに指定した要素の集まりを分割した新しい配列オブジェクトをブロックに渡して操作することができます。
# printfは第1引数に指定した形式に従い、第1引数の後に指定した引数を標準出力に出力します。
# "%2d%s"の"%2d"は出力したい数値が2桁より少なければ、空白スペースを入れるようにする指定です。
# “%s”は文字列を出力するための指定です。そのため、例えば第2引数に指定した要素は" 1"もしくは"11"のように出力されます。第3引数に指定した"\s"は空白スペースを表す文字なので、第1引数と第2引数に指定した文字は" 1 "もしくは"11 “のような形式で出力されます。
puts '----------- 434行目 -----------'
(1..31).each_slice(7) do |i|
  

  i.each {|n| printf("%2d%s", n, "\s") }
  print("\n")
end
puts '------------ END ------------'


# downtoメソッドをブロック付きで呼び出した時、1回目の繰り返しではレシーバに指定した数値オブジェクトの値をブロックパラメータに渡してブロックの処理を実行します。そして、2回目以降からはレシーバに指定した数値オブジェクトの値を1引きながらブロックの中の処理を繰り返し、引数に指定した数値オブジェクトの値になったら繰り返しをやめます。
# 5.downto(1)は最初に5をブロックにパラメータに渡して処理を実行します。次に1になるまでに5 – 1を4回するため、ブロックの処理を合計5回繰り返します。
puts '----------- 448行目 -----------'
mark = '*'
5.downto(1) {|i| print((mark * i) + "\n") }
puts '------------ END ------------'


# untilは条件を評価した結果が偽である限り処理を繰り返します。0 >= countは、0がcount以下ならば偽の値を返します。
# countに代入している値は7なので、0 >= countは0 >= 7です。0が7以上ではないので偽の値を返します。そのため、untilの繰り返しの処理が始まります。
puts '----------- 456行目 -----------'
def fib(count=9)
  count -= 2
  container = [0, 1]
  until 0 >= count
    container += [(container[-2] + container[-1])]
    count -= 1
  end
  return container
end
p fib
puts '------------ END ------------'


# each_with_indexメソッドはレシーバに指定した要素の集まりから、要素を取り出してインデックスと一緒にブロックに渡して操作することができます。問題のブロックパラメータの名前では、iが要素でnがインデックスです。

# odd?メソッドはレシーバに指定した数値オブジェクトの値が奇数であるかを評価して真偽値を返します。i.odd?はeach_with_indexメソッドによって渡されたインデックスが奇数であるかを判定しています。インデックスが奇数ならばodd?メソッドが真の値を返して、if修飾子で指定されたbreak(i)が実行されます。

# breakメソッドがブロックの中で呼び出されると、ブロックの繰り返しを終了します。breakメソッドの引数が指定されていれば、その値がブロック付きメソッド呼出しの返す値になります。インデックスは0から数え始め、最初に奇数になるインデックスは1です。each_with_indexメソッドはインデックスが1の値である"b"を返して繰り返しを終えます。そして、返された"b"はローカル変数のfooに代入されます。

# ローカル変数のfooに代入された"b"は、succメソッドを呼び出しています。文字列オブジェクトのsuccメソッドは、レシーバに指定した文字列オブジェクトがアルファベットの文字であった場合、次のアルファベットの文字列オブジェクトを新しく生成して返します。bの次のアルファベットはcなので、pメソッドが標準出力に出力するのは"c"です。
puts '----------- 480行目 -----------'
foo = ('a'..'z').each_with_index {|i, n| break(i) if n.odd? }
p foo.succ
puts '------------ END ------------'


puts '----------- 486行目 -----------'
x = 2.0
y = 1.0

loop do
  z = x / y          # => 2.0
  y = (y + z) / 2    # => 3.0 / 2 = 1.5
  # puts(y)            # => 1.5
  puts (y ** 2).abs - x
  break if ((y ** 2).abs - x < Float::EPSILON)
end
puts '------------ END ------------'


puts '----------- 500行目 -----------'
max = 42
min = 24

while min > 0
  tmp = min
  min = max % min
  max = tmp
end
p max
puts '------------ END ------------'


puts '----------- 512行目 -----------'
a = 100
b = a
puts a.object_id
puts b.object_id
a = 99
puts a.object_id
puts b.object_id
puts b
puts '------------ END ------------'


puts '----------- 525行目 -----------'
container = [1]
ary = (2..10).to_a # => [2,3,4,5,6,7,8,9,10]
tmp = ary.shift    # => [3,4,5,6,7,8,9,10]

while tmp
  ary.delete_if {|i| i % tmp == 0 }
  container << tmp
  tmp = ary.shift
end
p container
puts '------------ END ------------'


puts '----------- 539行目 -----------'
ary = []
10.times do |i|
  i.even? ? (i % 3 == 0) ? ary << i : next : next
end
p ary
puts '------------ END ------------'


# String#hexは文字列を16進数で解釈して、整数で返します。16進数で解釈できない場合は0を返します。
# String#octは文字列を8進数で解釈して、整数で返します。8進数で解釈できない場合は0を返します。
puts '----------- 547行目 -----------'
puts "0x90".hex
puts '100'.oct
puts '------------ END ------------'


# フォーマット文字列	意味
# %x	日付(%m/%d/%y)
# %m	月を表す数字(01-12)
# %M	分(00-59)
# %d	日(01-31)
# %D	日付(%m/%d/%y)
# %y	西暦の下2桁(00-99)
# %Y	西暦を表す数(9999)
puts '----------- 555行目 -----------'
require "date"
d = Date.new(2015, 1, 5)
puts d.strftime("%x") # => 01/05/15
puts d.strftime("%m") # => 01
puts d.strftime("%M") # => 00
puts d.strftime("%d") # => 05
puts d.strftime("%D") # => 01/05/15
puts d.strftime("%m/%d/%y") # => 01/05/15
puts d.strftime("%m/%d/%Y") # => 05/01/2015
puts '------------ END ------------'


# StandardErrorを継承しないクラスのインスタンスをraiseメソッドの引数に指定すると、TypeErrorが発生
puts '----------- 578行目 -----------'
# raise ['Error Message'] #=> exception class/object expected (TypeError)
puts '------------ END ------------'

puts '----------- 582行目 -----------'
puts Date.today.to_s
puts Date.today.strftime("%Y-%m-%d")
puts '------------ END ------------'

# 空のHashオブジェクトを生成するにはHash({}), {}, Hash.newのいずれかを用います。
# Hash#to_hは2次元配列からハッシュを生成します。例えば[[1, "data 1"], [2, "data 2"]].to_hの結果は{1=>"data 1", 2=>"data 2"}になります。
# Hash#mergeはselfと引数のハッシュをマージし、新しいHashを返します。Hash#mergeは非破壊的メソッドです。
# Hash#clearはselfより要素を全て取り除きます。Hash#clearは破壊的メソッドです。
puts '----------- 592行目 -----------'
puts a = Hash({})
puts b = Hash.new
puts '------------ END ------------'


# Enumerable#injectはブロックを使用して繰り返し計算を行います。
# injectには以下のような特徴があります。

# 引数を省略した場合は、要素1がブロック引数の1番目に渡されます。
# 引数を指定した場合は、その値が初期値になります。
# ブロック引数の1番目は前回の戻り値が渡されます。初回は、初期値が渡されます。
# ブロック引数の2番目は要素が順番に渡されます。
puts '----------- 597行目 -----------'
p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!
puts '------------ END ------------'

# "r":	読込専用ファイル
# "r+":	読込/書き込み用
# "w":	書き込み専用。ファイルがなければ新規作成、既に存在する場合はファイルサイズを0にする
# "w+":	読込/書き込み用。その他は"w"と同じ
# "a":	追加書き込み専用。ファイルがなければ新規作成
# "a+":	読込/追加書き込み専用。ファイルがなければ新規作成
puts '----------- 611行目 -----------'
File.open('textfile.txt', "r+") do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
puts '------------ END ------------'

# 問題のコードは";|:"を区切り文字に指定されているため、例えば"1;|:2"であれば[1, 2]になります。
# 異なる区切り文字を複数指定する場合は正規表現を用います。
# [1, 2, 3, 4]を得るためには、"1;2:3;4".split(/;|:/)とします。
puts '----------- 626行目 -----------'
str = "1;2:3;4"
p str.split(";|:")
p str.split(/;|:/)
puts '------------ END ------------'


# String.to_aはない
puts '----------- 631行目 -----------'
# hoge = "a".to_a # => エラー
# puts hoge.class
puts '------------ END ------------'


# foo (2) * 2はメソッド名と引数の間に空白があるため、foo((2) * 2)が呼ばれたと解釈されます。
puts '----------- 642行目 -----------'
def foo(n)
  n ** n
end

puts foo (2) * 2 # => foo((2) * 2)
puts foo(2) * 2 # => foo(2) * 2
puts '------------ END ------------'


# Hash#to_aはキーと値の2要素の配列を並べた配列を作成し、返します。
puts '----------- 652行目 -----------'
h = {a: 100, b: 200}
p a = h.to_a
p a
p a.to_h
puts '------------ END ------------'


puts '----------- 662行目 -----------'
h = {a: 100, b: 200}
h.each {|p|
  p p
}
puts '------------ END ------------'


# String#==(other)はotherが文字列の場合は、String#eql?と同じ結果を返します。
# otherが文字列以外の場合は、other.to_sの結果と比較します。
# String#eql?は同一文字列の場合にtrueを返します。
# ただし、自作クラスの場合はObject#eql?をオーバーライドする必要があります。
# さもなければ、同一の内容であるにもかかわらず、オブジェクトIDが異なるためfalseになります。
puts '----------- 670行目 -----------'
a1 = "abc"
a2 = 'abc'

print a1.eql? a2
print a1 == a2
puts '------------ END ------------'


# unlessは条件が成立しない場合に中の処理が実行されます。
# elseを用いることはできますが、elsifを用いることはできません。
puts '----------- 684行目 -----------'
# def hoge(n)
#   unless n != 3
#     "hello"
#   elsif n == 5
#     "world"
#   end
# end

# str = ''
# str.concat hoge(3)
# str.concat hoge(5)

# puts str
puts '------------ END ------------'

# Array#flattenはselfを再帰的に平坦化します(3次元配列を1次元配列の配列を返す)。
# Array#flatten!は破壊的にselfを再帰的に平坦化します。平坦化が行われない場合は、nilを返します。
# String#reverseはselfを逆順にした配列を返します。
# %||は%記法といいます。文字列リテラル等を定義することができます。
# 詳しい説明は%記法を参照してください。
puts '----------- 703行目 -----------'
# arr = ["apple", "banana", "orange"].flatten!
arr = [["apple", 001],["banana"],["orange"]].flatten
# arr = ["apple", "banana", "orange"].reverse
# arr = %|apple banana orange|
arr.each do |i|
  puts i
end
puts '------------ END ------------'

# Rubyではメソッド内で定数を定義することができません。
# 複数回メソッドを呼び出した場合に、定数が不定となるため定義できません。
# 宣言された場合は、SyntaxErrorが発生します。
puts '----------- 718行目 -----------'
# def hoge
#   x = 10
#   Y = x < 10 ? "C" : "D"
#   puts Y
# end
# hoge
puts '------------ END ------------'


puts '----------- 729行目 -----------'
hoge = *"a"
puts hoge.class
puts '------------ END ------------'


# <<識別子行から識別子行の直前までを文字列として扱います。このような表現方法をヒアドキュメントといいます。
puts '----------- 735行目 -----------'
s = <<-EOF
Hello,
Ruby
'EOF'
EOF

p s
puts '------------ END ------------'


puts '----------- 747行目 -----------'
hash = {a: 100, b: 200}

def splat_hash(a, b)
  p a
  p b
end

splat_hash(*hash)
puts '------------ END ------------'


# ダブルクオート(")で囲まれた文字列は式展開されます。
# シングルクオート(')で囲まれた文字列は式展開されません。
# Object#equal?は同一オブジェクトの場合にtrueを返します。
# String#eql?は同一文字列の場合にtrueを返します。
puts '----------- 759行目 -----------'
greet = "Hello"
puts "#{greet} world!"
puts '#{greet} world!'

a1 = "abc"
a2 = 'abc'

print a1.equal? a2
print a1.eql? a2
puts '------------ END ------------'


# Hash#delete(:key)はレシーバーからkeyの項目を削除します。
# このメソッドは破壊的メソッドです。
puts '----------- 777行目 -----------'
h = {a: 100, b: 200}
h.delete(:a)
p h
puts '------------ END ------------'


# | Array#pop | selfの末尾より1要素を破壊的に取り出します(LIFO)。 |
# | Array#push | selfの末尾に引数の値を破壊的に追加します(LIFO)。 |
# | Array#unshift | selfの先頭へ引数の値を破壊的に追加します(FIFO)。引数が指定されていない場合は何もしません。|
# | Array#shift | selfの先頭より1要素を破壊的に取り出します(FIFO)。 |
puts '----------- 786行目 -----------'
s = ["one", "two", "three"]
s.pop
s.pop
s.unshift
s.push "four"
p s
puts '------------ END ------------'


puts '----------- 800行目 -----------'
str = "abcdefghijk"
p str[1..3]
puts '------------ END ------------'


# <<識別子とした際は、インデントを加えることはできず、その場合は、エラーになります。
# ヒアドキュメントにインデントを加える場合は、<<-識別子とします。
puts '----------- 805行目 -----------'
s = <<EOF
Hello,
Ruby
EOF

p s

s = <<-EOF
      Hello,
      Ruby
      EOF

p s
puts '------------ END ------------'


puts '----------- 825行目 -----------'
def hoge(n)
  unless n == 3
    ret = "hello"
  end
  if n == 5
    ret = "world"
  end
  ret
end

str = ''
str.concat hoge(4)
str.concat hoge(5)

puts str
puts '------------ END ------------'


# Time#+はselfに加算します。単位は秒です。 ミリ秒じゃないよ
puts '----------- 844行目 -----------'
puts Time.now
puts Time.now + 3600
puts '------------ END ------------'


puts '----------- 851行目 -----------'
array = Array.new(3){"Apple"}
array[0].upcase!

p array
puts '------------ END ------------'


puts '----------- 859行目 -----------'
puts Dir.methods.grep /delete/i
puts Dir.methods.grep /dirname/i
puts Dir.methods.grep /chmod/i
puts Dir.methods.grep /rmdir/i
puts Dir.methods.grep /directory?/i
puts Dir.methods.grep /chown/i
puts '------------ END ------------'


# &と&&の違いについて
# &は共通する要素を出力する

# a = [1, 2, 3]
# b = [1, 3, 5]
# a & b #=> [1, 3]

# &&は a と b がどちらも真のとき、最後に評価された b を出力する
# a && b #=> [1, 3, 5]

# a = nilの場合右辺の処理は行われない
# a && b #=> nil

# |と||の違いについて
# |は重複している要素をまとめて出力する

# a = [1, 2, 3]
# b = [1, 3, 5]
# a | b #=> [1, 2, 3, 5]

# ||は a と b がどちらかが真のとき、最初に評価された a を出力する
# a || b #=> [1, 2, 3]

# a = nilの場合右辺の処理が行われる
# a || b #=> [1, 3, 5]
puts '----------- 867行目 -----------'
a = [1, 2, 5, 7, 8]
b = [1, 3, 6, 7, 9]
c =  nil || a & b | a && a | b
p c
puts '------------ END ------------'


# 外部で定義されたローカル変数はメソッド内部から呼び出すことはできません。
# 外部で定義された定数はメソッド内部で呼び出し可能ですが、メソッド内部で定数を定義することはできません。
puts '----------- 900行目 -----------'
CONST = "REx"
def foo3
  CONST
end
puts foo3

# def foo4
#   CONST = "REx"
# end
# puts foo4

def foo2
  var = "REx"
end
puts foo2

# var = "REx"
# def foo1
#   var
# end
# puts foo1

puts '------------ END ------------'


# String#deleteメソッドは、引数に指定した文字を削除します。
# メソッド名に!が付いていると破壊的メソッドになります。
# 引数の先頭の文字が^の場合は指定した文字以外の文字を削除します。
# -は両端に文字がある場合は範囲指定となります。
# ,区切りで引数を複数指定した場合は、全ての引数にマッチした文字が削除対象となります。
puts '----------- 928行目 -----------'
str = "-1234567890-"
puts str.delete("2-41-")
puts str.delete("^2-41-")
puts str.delete("0^5-9-")
puts str.delete( "^1-4-")
puts '------------ END ------------'


# String#to_iメソッドは文字列を整数に変換します。
# 整数と見なせない文字がある場合はその文字までが変換対象になります。

# 空文字、nilが変換対象の場合は0を返します。

# to_i(n)のように引数に基数を指定できます。
# 引数nに基数を指定することでn進数へ変換します。

# nには0と2~36の整数を指定できます。
# nに0を指定した場合変換対象の接頭辞から基数を判断します。
puts '----------- 937行目 -----------'
arr = [
  "a".to_i(36),
  "070".to_i(0),
  nil.to_i,
  "0b0001".to_i
]

p arr
puts '------------ END ------------'


puts '----------- 964行目 -----------'
x = %(a b)
y = %W(c d)
z = y << x

p z
puts '------------ END ------------'


puts '----------- 973行目 -----------'
a = [1, 2, 3, 4, 5]
a.each { |n| puts n }
a.each_with_index { |n, i| puts n }
a.each_with_index { |n, i| puts i }
a.each_index { |n| puts n }
puts '------------ END ------------'


# 多重代入の場合、変数に対して代入する値の数が少ないときは余った変数にnilが格納されます。
# 変数に対して値の数が多い場合は余った値は無視されます。
# また1つの変数に対して複数の値を代入する場合は配列として代入されます。
puts '----------- 982行目 -----------'
x, y, z = 1, 2, 3
p x # => 1
p y # => 2
p z # => 3
puts "----"

x, y, z = 1, 2
p x
p y
p z
puts "----"

x, y, z = 1, 2, 3, 4
p x
p y
p z
puts "----"

x = 1, 2, 3, 4
p x
puts "----"

(x, y), z = 1, 2, 3
p x
p y
p z
puts "----"

(x, y), z = [1, 2], 3
p x
p y
p z
puts '------------ END ------------'


puts '----------- 1023行目 -----------'
a1 = [1,2,3]
a2 = [4,2,3]

p a1 || a2
puts '------------ END ------------'


# ハッシュはキーが同じものがあれば、右側で定義されたもので上書きされます。
puts '----------- 1031行目 -----------'
hash = { a: 100, b: 200, c: 300, a: 150, c: 250 }
p hash
puts '------------ END ------------'


# IO.readメソッドは引数に指定したファイルを指定の位置から指定バイト分読み込み文字または文字列として返します。
# 問題では第1引数で読み込むファイル、第2引数で読み込む文字数、第3引数で読み込み開始位置を指定しています。
puts '----------- 1037行目 -----------'
puts IO.read("text.txt", 3, offset = 1)
puts '------------ END ------------'


# File.dirnameは引数に指定した文字列の一番後ろの/より前の文字列を返します。
# /を含まない文字列の場合"."を返します。
puts '----------- 1045行目 -----------'
puts File.methods.grep /dirname/i
puts File.methods.grep /close/i
puts File.methods.grep /home/i
puts File.methods.grep /pwd/i
puts '------------ END ------------'