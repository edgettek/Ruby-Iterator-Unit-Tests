require 'minitest/autorun'
require './triple'

class TripleTests < Minitest::Test

  def setup
    @integers = Triple.new(1, 2, 3)
    @strings = Triple.new("Kyle", "Preston", "Renato")

  end





  # all?[{ |obj| block }] → true or false
  # any?[{ |obj| block }] → true or false
  # chunk { |elt| ... } → array
  # chunk_while { |elt_before,elt_after| bool } → array
  # collect { |obj| block } → array % same as map
  # collect_concat { |obj| block } → array % same as flat_map

  def test_count_ints
    result = @integers.count

    assert_equal result, 3

  end

  def test_count_strings
    result = @strings.count

    assert_equal result, 3

  end

  # count(item) → int

  def test_count_2_ints

    result = @integers.count(2)

    assert_equal result, 1

  end

  def test_count_4_ints

    result = @integers.count(4)

    assert_equal result, 0

  end

  def test_count_Kyle_strings

    result = @strings.count("Kyle")

    assert_equal result, 1

  end

  def test_count_Allison_strings

    result = @strings.count("Allison")

    assert_equal result, 0

  end


  # count { |obj| block } → int

  def test_count_block_1_ints
    result = @integers.count do |number|
      number>1
    end

    assert_equal result, 2
  end

  def test_count_block_2_ints
    result = @integers.count do |number|
      number<-4
    end

    assert_equal result, 0
  end

  def test_count_block_1_string
    result = @strings.count do |name|
      name.eql? 'Kyle'
    end

    assert_equal result, 1
  end

  def test_count_block_2_string
    result = @strings.count do |name|
      name.eql? 'Wilson'
    end

    assert_equal result, 0
  end



  # cycle(n=nil) { |obj| block } → nil

  def test_cycle_ints
    result = @integers.cycle(3) do |number|
      print number
    end

    assert_equal result, nil
  end

  def test_cycle_string
    result = @strings.cycle(3) do |name|
      print name
    end

    assert_equal result, nil
  end


  # detect(ifnone = nil) { |obj| block } → obj or nil
  # drop(n) → array
  # drop_while { |arr| block } → array
  # each_cons(n) { ... } → nil
  # each_entry{ |obj| block } → enum
  # each_slice(n) { ... } → nil
  # each_with_index(*args) { |obj, i| block } → enum
  # each_with_object(obj) { |(*args), memo_obj| ... } → obj
  # entries(*args) → array
  # find(ifnone = nil) { |obj| block } → obj or nil
  # find_all { |obj| block } → array % same as select
  # find_index(value) → int or nil
  # find_index { |obj| block } → int or nil
  # first → obj or nil
  # first(n) → an_array
  # flat_map { |obj| block } → array %same as collect_concat
  # grep(pattern) → array
  # grep(pattern) { |obj| block} → array
  # grep_v(pattern) → array
  # grep_v(pattern) { |obj| block } → array
  # group_by { |obj| block } → a_hash
  # include?(obj) → true or false %same as member
  # inject(initial, sym) → obj %same as reduce (all of inject)
  # inject(sym) → obj
  # inject(initial) { |memo, obj| block } → obj
  # inject { |memo, obj| block } → obj
  # map { |obj| block } → array % same as collect
  # max → obj
  # max { |a, b| block } → obj
  # max(n) → array
  # max(n) {|a,b| block } → obj
  # max_by {|obj| block } → obj
  # max_by(n) {|obj| block } → obj
  # member?(obj) → true or false %same as include
  # min → obj
  # min {| a,b | block } → obj
  # min(n) → array
  # min(n) {| a,b | block } → array
  # min_by {|obj| block } → obj
  # min_by(n) {|obj| block } → array
  # minmax → [min, max]
  # minmax { |a, b| block } → [min, max]
  # minmax_by { |obj| block } → [min, max]
  # none? { |obj| block } → true or false
  # one? { |obj| block } → true or false
  # partition { |obj| block } → [ true_array, false_array ]
  # reduce %see inject above
  # reject { |obj| block } → array
  # reverse_each(*args) { |item| block } → enum
  # select { |obj| block } → array % same as find_all
  # slice_after(pattern) → array
  # slice_after { |elt| bool } → array
  # slice_before(pattern) → array
  # slice_before { |elt| bool } → array
  # slice_when { |elt_before, elt_after| bool } → array
  # sort { |a, b| block } → array
  # sort_by { |obj| block } → array
  # sum(init=0) → number
  # sum(init=0) { |e| expr } → number
  # take(n) → array
  # take_while { |obj| block } → array
  # to_a(*args) → array
  # to_h(*args) → hash
  # uniq → new_ary
  # uniq → { |item| ... } → new_ary
  # zip(arg, ...) → an_array_of_array
  # zip(arg, ...) → { |arr| block } → nil




end