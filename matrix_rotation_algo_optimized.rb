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

  def rotate r=1
    r %= rows*(cols-1)

    rows.times.with_object(Matrix.new rows, cols) do |i, rotated|
      cols.times do |j|
        level = [i+1, j+1, rows-i, cols-j].min
        r_i, r_j = [i, j]

        r.times do
          top_row = r_i+1 == level
          bottom_row = r_i == rows - level
          left_col = r_j+1 == level
          right_col = r_j == cols - level

          r_i, r_j = if top_row
                       right_col ? [r_i+1, r_j] : [r_i, r_j+1]
                     elsif bottom_row
                       left_col ? [r_i-1, r_j] : [r_i, r_j-1]
                     else
                       left_col ? [r_i-1, r_j] : [r_i+1, r_j]
                     end
        end

        rotated.set i, j, get(r_i, r_j)
      end
    end
  end

  private
  attr_reader :matrix
end
