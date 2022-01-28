@contador = 0

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
def is_bad_version(version)
    @contador += 1
    [12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30].include?(version)
end

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    -1 if n.nil?
    left = 0
    rigth = n
    medio = rigth / 2
    aux = -1
    while left <= rigth
        if is_bad_version(medio)
            rigth = medio - 1
            aux = medio
        else
            left = medio + 1
        end
        medio = (left + rigth) / 2
    end
    aux
end

p first_bad_version(50)
p @contador # numero de veces q consultamos a la API
