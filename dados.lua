require("formulario")

dados = {

}

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function quantidade_registros()
  return tablelength(dados)
end
