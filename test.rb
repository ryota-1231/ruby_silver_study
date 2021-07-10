
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


puts '----------- 434行目 -----------'
(1..31).each_slice(7) do |i|
  i.each {|n| printf("%2d%s", n, "\s") }
  print("\n")
end
puts '------------ END ------------'