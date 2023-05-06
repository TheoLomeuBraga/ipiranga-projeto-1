colaboradores = { "Théo Lomeu Braga", "Pierre da Silva Rodrigues" }

print("Pierre esteve aqui")

function creditar()
  for index, value in ipairs(colaboradores) do
    print(value .. " colaborou com o projeto")
  end
end
