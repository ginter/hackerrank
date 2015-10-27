require 'minitest/spec'
require 'minitest/autorun'
require_relative './matrix-rotation-algo'

describe '#rotate_matrix' do
  describe 'with 2x2 matrix' do
    before { @matrix = Matrix.populate <<-MATRIX}
      1 2
      3 4
    MATRIX
    it { @matrix.rotate.to_s.must_equal Matrix.populate(<<-MATRIX).to_s }
      2 4
      1 3
    MATRIX
  end

  describe 'with 2x3 matrix' do
    before { @matrix = Matrix.populate <<-MATRIX }
      1 2 3
      4 5 6
    MATRIX
    it { @matrix.rotate.to_s.must_equal Matrix.populate(<<-MATRIX).to_s }
      2 3 6
      1 4 5
    MATRIX
  end

  describe 'with 4x4 matrix' do
    before { @matrix = Matrix.populate <<-MATRIX }
       1  2  3  4
       5  6  7  8
       9 10 11 12
      13 14 15 16
    MATRIX
    it { @matrix.rotate.to_s.must_equal Matrix.populate(<<-MATRIX).to_s }
       2  3  4  8
       1  7 11 12
       5  6 10 16
       9 13 14 15
    MATRIX
  end

  describe 'with multiple rotations' do
    before { @matrix = Matrix.populate <<-MATRIX }
       1  2  3  4
       5  6  7  8
       9 10 11 12
      13 14 15 16
    MATRIX
    it { @matrix.rotate.rotate.to_s.must_equal Matrix.populate(<<-MATRIX).to_s }
      3  4  8 12
      2 11 10 16
      1  7  6 15
      5  9 13 14
    MATRIX
  end
end
