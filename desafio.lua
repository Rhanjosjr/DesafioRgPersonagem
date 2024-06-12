

--[[

Nome da criatura   
Decrição
Som que faz
Atrubutos
    Ataque
    Defesa
    Vitalidade
    velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

    =================================================================================================================
                                                             _____
                                                            | -  -|
                DESAFIO EM LUA :   FICHA DE MONSTROS        |  *  |
                                                            | --- |

    =================================================================================================================
    /
    /   Creeper
    /   Um monstro muito sagaz com um temperamento explosivo
    /   emoji
    /
    /
    /   Som:
    /       Tssssssss
    /
    /   Atrubutos:
    /       Ataque :  ########00
    /       Defesa :  ###0000000
    /       ...
        /
    /
    =================================================================================================================

]]

--habilitar utf-8 no terminal para aceitar emoji e acentos
os.execute("chcp 65001")
--para retirar a impressao do terminal, devemos realizar a limpeza do terminal
os.execute("cls")


--criatura
local monsterName = " Terror da noite"
local species = " Draconica"
local monsterDescription = " Um terrivel dragão furtivo, capaz de emitri chamas negras que consomem tudo em sua frente"
local symbol = "🐉"
local sound = " Uhahhhhhh"
local favoriteTime = " Noturno"
local habbitat = " Montanhas da perdição"
local heightMax = " Altura máxima de 45 metros"


--atributos
local attackAttribute = 10
local defenseAttribute = 7
local lifeyAattribute = 6
local speedAttribute = 8
local inteligenceAttribute = 10

--função usada para calcular a barra de progresso
---função que recebe um atributo e nos retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local resultado = ""

    for i = 1, 10, 1 do
        if i <= attribute then
            --cheio
            resultado = resultado .."🟩"
        else
            --vazio
            resultado=resultado.."⬛"
        end
        
    end

    return resultado
    
end



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


