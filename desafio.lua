
--habilitar utf-8 no terminal para aceitar emoji e acentos
os.execute("chcp 65001")
--para retirar a impressao do terminal, devemos realizar a limpeza do terminal
os.execute("cls")


--criando dicionarios
local monsters = {
    Dragon = {
        Nome = " Terror da noite",
        Especie = " Draconica",
        Descricao = " Um terrivel dragão furtivo, capaz de emitri chamas negras que consomem tudo em sua frente",
        Simbolo ="🐉",
        Som = " Uhahhhhhh",
        Atividade = " Noturna",
        Habbitat = " Montanha da perdição",
        Altura = "Altura máxima de 45 metros",
        Ataque = 10,
        Defesa = 7,
        Vida = 6,
        Velocidade= 8,
        Inteligencia = 10

    },
    Spider = {
        Nome = " Rainha da noite",
        Especie = " Aracnideo",
        Descricao = " Uma aranha gigantesca que prende suas presar e se alimenta sulgando vitalidade delas",
        Simbolo ="🕷",
        Som = " ---- ",
        Atividade = " Noturna",
        Habbitat = " Montanha da perdição",
        Altura = "Altura máxima de 20 metros",
        Ataque = 5,
        Defesa = 4,
        Vida = 6,
        Velocidade= 8,
        Inteligencia = 6
    }
}



--função usada para calcular a barra de progresso---função que recebe um atributo e nos retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local resultado = ""
    local fullchar = "🟩"
    local emptychar = "⬛"

    for i = 1, 10, 1 do
        if i <= attribute then
            --cheio
            resultado = resultado ..fullchar
        else
            --vazio
            resultado=resultado..emptychar
        end
        
    end

    return resultado
    
end




--Para repetir todo o bloco ate ser digitado exit
local exitProgram = false
while exitProgram == false do
    print("Olá aventureiro, esses são os monstros catalogados em nosso mundo de aventura!")
        for key, value in pairs(monsters) do
            print(key)
        end
    print()
    print("-----------------------------------------------------------------------------------")
    print("Escolha um dos monstros da lista para verificar suas caracteristicas e atributos, ou digite exit, para encerrar o programa: ")

    --escolha do usuário
    local choiceUser = io.read()

    --verificando a escolha se e nill
    local verificar  = monsters[choiceUser]
    --print(verificar)

        if  choiceUser == "exit" then
            exitProgram = true
            print("LEMBRE-SE o perigo espreita .....aguardando um momento, esteja sempre preparado!!!!")
            print()
            print()
        elseif verificar == nil then
            print("monstro não cadastrado")
        else  
    --criatura
            local monsterName = monsters[choiceUser].Nome
            local species = monsters[choiceUser].Especie
            local monsterDescription = monsters[choiceUser].Descricao
            local symbol = monsters[choiceUser].Simbolo
            local sound = monsters[choiceUser].Som
            local favoriteTime =monsters[choiceUser].Atividade
            local habbitat = monsters[choiceUser].Habbitat
            local heightMax = monsters[choiceUser].Altura
    --atributos
            local attackAttribute = monsters[choiceUser].Ataque
            local defenseAttribute = monsters[choiceUser].Defesa
            local lifeyAattribute = monsters[choiceUser].Vida
            local speedAttribute = monsters[choiceUser].Velocidade
            local inteligenceAttribute = monsters[choiceUser].Inteligencia
    --Cartão
            print("  =================================================================================================================")
            print("                                 DESAFIO EM LUA :   FICHA DE MONSTROS        (●'◡'●)")
            print("  =================================================================================================================")
            print("| ")
            print("| " .."                 Criatura:" .. monsterName)
            print("|                            " .. monsterDescription)
            print("| " .."                  Espécie: " .. species)
            print("| " .."     Som da caractristico: " .. sound)
            print("| " .."           Tamanho máximo: " .. heightMax)
            print("| " .."   Simbolo representativo: " .. symbol)
            print("| " .."     Horário de atividade: " .. favoriteTime)
            print("| " .."                  Habitat: " .. habbitat)
            print("| ")
            print("| ".."Atributos:")
            print("|        Ataque: "..getProgressBar(attackAttribute))
            print("|        Defesa: "..getProgressBar(defenseAttribute))
            print("|          Vida: "..getProgressBar(lifeyAattribute))
            print("|    Velocidade: "..getProgressBar(speedAttribute))
            print("|  Inteligência: "..getProgressBar(inteligenceAttribute))
            print("| ")
            print("  =================================================================================================================")
            print()
            print()

        end


    
end



