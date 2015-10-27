class Matrix
  def self.populate values
    data = values.split("\n").map { |r| r.split(' ') }
    rows = data.count
    cols = data.first.count

    new rows, cols, data
  end

  attr_reader :rows, :cols

  def initialize rows, cols, data=rows.times.map { cols.times.map { '' } }
    @rows = rows
    @cols = cols
    @matrix = data
  end

  def to_s
    matrix.map { |r| r.join(' ') }.join "\n"
  end

  def get i, j
    matrix[i][j]
  end

  def set i, j, val
    matrix[i][j] = val
  end

  def rotate
    rows.times.with_object(Matrix.new rows, cols) do |i, rotated|
      cols.times do |j|
        level = [i+1, j+1, rows-i, cols-j].min
        top_row = i+1 == level
        bottom_row = i == rows - level
        left_col = j+1 == level
        right_col = j == cols - level

        m, n = if top_row
                 right_col ? [i+1, j] : [i, j+1]
               elsif bottom_row
                 left_col ? [i-1, j] : [i, j-1]
               else
                 left_col ? [i-1, j] : [i+1, j]
               end

        rotated.set i, j, get(m, n)
      end
    end
  end

  private
  attr_reader :matrix
end
