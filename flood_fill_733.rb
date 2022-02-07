# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  return [[]]if image.nil? || sr.nil? || sc.nil? || new_color.nil?

  return image if image[sr][sc] == new_color

  initial_color = image[sr][sc]
  fill(image, sr, sc, new_color, initial_color)
  image
end

def fill image, sr, sc, new_color, initial_color
  return if sc < 0 || sr < 0 || sr >= image.size  || sc >= image[0].size || image[sr][sc] != initial_color

  image[sr][sc] = new_color

  fill(image, sr, sc+1, new_color, initial_color) # tiene q navegar en la misma fila hacia la derecha
  fill(image, sr, sc-1, new_color, initial_color) # tiene q navegar en la misma fila hacia la izquierda
  fill(image, sr+1, sc, new_color, initial_color) # tiene q navegar hacia la fila de abajo
  fill(image, sr-1, sc, new_color, initial_color) # tiene q navegar hacia la fila de arriba
end


# Input: image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1, sc = 1, newColor = 2
# Output: [[2,2,2],[2,2,0],[2,0,1]]
# Explanation: From the center of the image with position (sr, sc) = (1, 1) (i.e., the red pixel), all pixels connected by a path of the same color as the starting pixel (i.e., the blue pixels) are colored with the new color.
# Note the bottom corner is not colored 2, because it is not 4-directionally connected to the starting pixel.

image = [
  [1,1,1],
  [1,1,0],
  [1,0,1]
]

sr = 1
sc = 1
new_color = 2

p flood_fill(image, sr, sc, new_color)

