defmodule Faker.Name.Female do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for name data in Brazilian Portuguese
  """

  @doc """
  Returns a complete name (may include a suffix)

  ## Examples

      iex> Faker.Name.Female.name()
      "Luna Castelo Filho"
      iex> Faker.Name.Female.name()
      "Dalila Macieira"
      iex> Faker.Name.Female.name()
      "Maria Vitória Bonfim"
      iex> Faker.Name.Female.name()
      "Eduarda Santana"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 9))
  defp name(0), do: "#{first_name()} #{last_name()} #{suffix()}"

  defp name(n) when is_integer(n) do
    "#{first_name()} #{last_name()}"
  end

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Name.Female.first_name()
      "Maria Fernanda"
      iex> Faker.Name.Female.first_name()
      "Luna"
      iex> Faker.Name.Female.first_name()
      "Gabriela"
      iex> Faker.Name.Female.first_name()
      "Heloísa"
  """
  @spec first_name() :: String.t()
  sampler(:first_name, [
    "Alice",
    "Alícia",
    "Aline",
    "Amanda",
    "Ana",
    "Beatriz",
    "Bianca",
    "Bruna",
    "Carla",
    "Catarina",
    "Cecília",
    "Célia",
    "Clara",
    "Dalila",
    "Eduarda",
    "Emanuelly",
    "Fabrícia",
    "Felícia",
    "Fernanda",
    "Gabriela",
    "Giovanna",
    "Helena",
    "Heloísa",
    "Isabel",
    "Isabela",
    "Isabella",
    "Isabelly",
    "Isadora",
    "Isis",
    "Janaína",
    "Joana",
    "Júlia",
    "Karla",
    "Lara",
    "Larissa",
    "Laura",
    "Lavínia",
    "Letícia",
    "Lívia",
    "Lorena",
    "Lorenzo",
    "Lorraine",
    "Luiza",
    "Manuela",
    "Marcela",
    "Márcia",
    "Margarida",
    "Maria",
    "Mariana",
    "Marina",
    "Mércia",
    "Morgana",
    "Natália",
    "Núbia",
    "Ofélia",
    "Paula",
    "Rafaela",
    "Rebeca",
    "Roberta",
    "Sara",
    "Sarah",
    "Sílvia",
    "Sophia",
    "Suélen",
    "Talita",
    "Tertuliano",
    "Valentina",
    "Vitória",
    "Yasmin",
    "Yuri",
    "Adriana",
    "Agatha",
    "Alessandra",
    "Allana",
    "Ana Beatriz",
    "Ana Cecília",
    "Ana Clara",
    "Ana Júlia",
    "Ana Laura",
    "Ana Lívia",
    "Ana Luiza",
    "Ana Sophia",
    "Ana Vitória",
    "Antonella",
    "Antonia",
    "Aurora",
    "Ayla",
    "Bárbara",
    "Camila",
    "Carolina",
    "Clarice",
    "Elisa",
    "Eloah",
    "Emilly",
    "Francisca",
    "Gabrielly",
    "Giulia",
    "Juliana",
    "Laís",
    "Liz",
    "Louise",
    "Luana",
    "Luna",
    "Maitê",
    "Malu",
    "Marcia",
    "Maria Alice",
    "Maria Cecília",
    "Maria Clara",
    "Maria Eduarda",
    "Maria Fernanda",
    "Maria Flor",
    "Maria Helena",
    "Maria Isis",
    "Maria Júlia",
    "Maria Laura",
    "Maria Luiza",
    "Maria Sophia",
    "Maria Valentina",
    "Maria Vitória",
    "Mariah",
    "Mathias",
    "Maya",
    "Milena",
    "Mirella",
    "Olívia",
    "Patricia",
    "Pérola",
    "Pietra",
    "Sophie",
    "Stella"
  ])

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Name.Female.last_name()
      "Sá"
      iex> Faker.Name.Female.last_name()
      "das Neves"
      iex> Faker.Name.Female.last_name()
      "Castelo"
      iex> Faker.Name.Female.last_name()
      "Mendes"
  """
  @spec last_name() :: String.t()
  sampler(:last_name, [
    "Aguiar",
    "Albuquerque",
    "Almada",
    "Almeida",
    "Álvares",
    "Alves",
    "Ambrósio",
    "Amoreira",
    "Antena",
    "Antunes",
    "Aparício",
    "Aragão",
    "Arantes",
    "Araújo",
    "Aroeira",
    "Arriaga",
    "Assumpção",
    "Banheira",
    "Barata",
    "Barbosa",
    "Barreira",
    "Barreto",
    "Barros",
    "Barroso",
    "Batista",
    "Beltrão",
    "Bentes",
    "Bernardes",
    "Bittencourt",
    "Bomdia",
    "Bonfim",
    "Bouças",
    "Braga",
    "Brites",
    "Brum",
    "Bulhões",
    "Cabreira",
    "Cachoeira",
    "Caldas",
    "Caldeira",
    "Camacho",
    "Campos",
    "Cardoso",
    "Carneiro",
    "Carreira",
    "Carvalheira",
    "Carvalho",
    "Caseira",
    "Casqueira",
    "Castanheira",
    "Castanho",
    "Castelo",
    "Castro",
    "Cavalcanti",
    "Cerqueira",
    "Chaves",
    "Conceição",
    "Coqueiro",
    "Corrêa",
    "Corte",
    "Costa",
    "Coutinho",
    "Crespo",
    "Cruz",
    "Custódio",
    "da Aldeia",
    "da Bandeira",
    "da Barra",
    "da Barranca",
    "da Conceição",
    "da Costa",
    "da Cruz",
    "da Cunha",
    "da Fonseca",
    "da Fontoura",
    "da Fronteira",
    "da Gama",
    "da Luz",
    "da Madureira",
    "da Maia",
    "da Mata",
    "da Mota",
    "da Nóbrega",
    "da Paz",
    "da Penha",
    "da Rocha",
    "da Rosa",
    "da Silva",
    "da Silveira",
    "da Terra",
    "da Veiga",
    "Dantas",
    "das Neves",
    "Datena",
    "de Assunção",
    "de Borba",
    "de Lara",
    "de Lins",
    "de Oliveira",
    "de Quadros",
    "de Sá",
    "Dias",
    "Diegues",
    "do Prado",
    "Domingues",
    "Dorneles",
    "dos Reis",
    "Duarte",
    "Espinheira",
    "Espinhosa",
    "Esteves",
    "Farias",
    "Fernandes",
    "Ferraço",
    "Ferreira",
    "Figueira",
    "Filgueira",
    "Fogaça",
    "Fontes",
    "Fontinhas",
    "Franco",
    "Freitas",
    "Gabeira",
    "Galego",
    "Galvão",
    "Garcês",
    "Garcez",
    "Gentil",
    "Geraldes",
    "Godinho",
    "Godins",
    "Gomes",
    "Gomide",
    "Gonçalves",
    "Goulart",
    "Grotas",
    "Guedes",
    "Guterres",
    "Henriques",
    "Hermingues",
    "Hernandes",
    "Jaques",
    "Jesus",
    "Junqueira",
    "Laranjeira",
    "Leiria",
    "Lessa",
    "Lima",
    "Limeira",
    "Lobos",
    "Longuinho",
    "Lopes",
    "Louzada",
    "Macedo",
    "Macieira",
    "Madeira",
    "Mangueira",
    "Marcondes",
    "Marins",
    "Marques",
    "Martim",
    "Martins",
    "Matoso",
    "Meira",
    "Meireles",
    "Melo",
    "Mendanha",
    "Mendes",
    "Menendes",
    "Modesto",
    "Moniz",
    "Monteira",
    "Monteiro",
    "Moraes",
    "Morais",
    "Moreira",
    "Moreno",
    "Moura",
    "Munhoz",
    "Muniz",
    "Nascimento",
    "Negrão",
    "Neves",
    "Nogueira",
    "Novaes",
    "Nunes",
    "Oliveira",
    "Ordonhes",
    "Ornelas",
    "Ouriques",
    "Paes",
    "Paiva",
    "Palhares",
    "Palmeira",
    "Parreira",
    "Passarinho",
    "Pedroso",
    "Peixoto",
    "Pereira",
    "Peres",
    "Pimenta",
    "Pinheira",
    "Pinto",
    "Pires",
    "Porteira",
    "Porto",
    "Quaresma",
    "Quarteira",
    "Raia",
    "Ramalho",
    "Rameira",
    "Ramires",
    "Ramos",
    "Rebouças",
    "Rêgo",
    "Regueira",
    "Reis",
    "Resende",
    "Rezende",
    "Ribas",
    "Ribeira",
    "Ribeiro",
    "Rios",
    "Rocha",
    "Rodrigues",
    "Rolim",
    "Roriz",
    "Roseira",
    "Sá",
    "Sais",
    "Sales",
    "Sanches",
    "Santana",
    "Santos",
    "Saraiva",
    "Silva",
    "Silveira",
    "Simão",
    "Simões",
    "Siqueira",
    "Siqueiro",
    "Soares",
    "Soeira",
    "Solimões",
    "Souza",
    "Tavares",
    "Taveira",
    "Teixeira",
    "Teles",
    "Vasques",
    "Velasques",
    "Veles",
    "Veloso",
    "Viana",
    "Vidal",
    "Videira",
    "Vieira",
    "Vimaranes",
    "Viveiros",
    "Xavier",
    "Ximenes"
  ])

  @doc """
  Returns a random suffix

  ## Examples

      iex> Faker.Name.Female.suffix()
      "Jr."
      iex> Faker.Name.Female.suffix()
      "Filho"
      iex> Faker.Name.Female.suffix()
      "Jr."
      iex> Faker.Name.Female.suffix()
      "Filho"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "Jr.",
    "Neto",
    "Filho"
  ])
end