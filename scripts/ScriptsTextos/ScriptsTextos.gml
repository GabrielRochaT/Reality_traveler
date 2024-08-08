// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_texts(){
	switch npc_name{
		case "Doctor":
			text[0] = "DOCTOR: Era você quem eu estava procurando!                                                         (Mouse Esquerdo)"
			text[1] = "VOCÊ: Eu? Espera, o que aconteceu aqui? O senhor está bem? "
			text[2] = "DOCTOR: Uma tragédia meu filho!"
			text[3] = "DOCTOR: Você lembra do experimento que estavamos trabalhando?"
			text[4] = "VOCÊ: Sim, a máquina universal"
			text[5] = "DOCTOR: Isso mesmo, ontem depois que todos foram embora eu fiquei com algumas ideias em minha cabeça, não iria conseguir dormir em paz assim, então voltei para o laboratório para tentar aplica-las."
			text[6] = "DOCTOR: Porém..."
			text[7] = "VOCÊ: Fale logo doutor, estou ficando nervoso!"
			text[8] = "DOCTOR: A máquina funcionou, mas não da forma que gostariamos"
			text[9] = "DOCTOR: Acontece que a máquina acabou atraindo um ser de outra realidade, a criatura destruiu o laboratório e levou o nosso item vital"
			text[10] = "DOCTOR: O nosso reator, sem ele não teremos energia suficiente para conter os nossos experimentos perigosos lá embaixo!"
			text[11] = "DOCTOR: Seremos todos aniquilados!!"
			text[12] = "VOCÊ: Se acalme! Deve ter algo que possamos fazer"
			text[13] = "DOCTOR: Sim! Por isso preciso de você"
			text[14] = "DOCTOR: Depois de uma intensa luta, consegui mandar as criaturas de volta."
			text[15] = "DOCTOR: Porém a máquina foi destruida, mas com as peças restantes e o conhecimento do que deu errado, passei o resto da noite trabalhando em um dispositivo."
			text[16]= "DOCTOR: O relógio universal! Com ele poderemos viajar para essas realidades e recuperar os nossos itens!"
			text[17] = "DOCTOR: Na verdade, nós não, apenas você."
			text[18] = "VOCÊ: Eu?"
			text[19] = "DOCTOR: Sim, eu não posso, estou muito cansado e machucado, além disso preciso ficar aqui e arrumar essa bagunça, não se preocupe, ficarei de olho em você"
			text[20] = "VOCÊ: Tudo bem, farei isso."
			text[21] = "DOCTOR: Muito obrigado rapaz! Então vá, o relógio está naquela mesa, pegue-o, o relógio possui a função de atirar esferas de energia porém não tenho mais células de recarga, talvez você encontre algo no caminho."
			text[22] = "DOCTOR: Após isso pode acionar o relógio e se dirigir para a realidade que já programei, recupere o reator e volte para cá"
			text[23] = "DOCTOR: Boa sorte rapaz, confio em você!"
			text[24] = "VOCÊ: Obrigado doutor, recuperarei o reator e logo estarei de volta!"
			text[25] = "..:Pegue o relôgio e aperte 'J' para utiliza-lo:.."
		break;
		
		case "Ned":
			text[0] = "???: Olha só um viajante!"
			text[1] = "VOCÊ: Olá, meu nome é Lino, que lugar é esse?"
			text[2] = "FRED: Meu nome é Fred, você está em Grassy Fields, minha terra, o que te traz aqui?"
			text[3] = "VOCÊ: Certo, eu sou de outra terra, bem diferente daqui por sinal, pois um item importante foi roubado por alguma criatura daqui."
			text[4] = "FRED: Entendi, acredito que sei o que aconteceu" 
			text[5] = "VOCÊ: Você viu o meu reator? é como uma grande bola amarela, você viu algo assim?"
			text[6] = "FRED: Não, mas, você falou que uma criatura roubou seu universo certo?"
			text[7] = "VOCÊ: Isso mesmo, você sabe de algo?"
			text[8] = "FRED: Sobre uma criatura horrivel, sim, conheço bem, o nome dele é ROORG, ele é um monstro de pedra que aterroriza essa terra a tempos e acredto que quando teve a oportunidade, tentou aterrorizar a sua também"
			text[9] = "FRED: Ontem, ele havia sumido, achavamos que seria permanente, mas derrepente ele voltou, da mesma forma de que você chegou aqui, e foi direto para o seu castelo, acredito que ele possa estar com seu 'Retor'."
			text[10] = "VOCÊ: Reator, ótimo então como encontro ele."
			text[11] = "FRED: Como eu falei ele correu para o castelo e está trancado desde então, se você quiser seu item, vai precisar ir até lá"
			text[12] = "VOCÊ: E como eu chego lá?"
			text[13] = "FRED: Basta seguir em frente, o castelo fica no topo da colina, após a árvore morta."
			text[14] = "FRED: Mas ele está trancado, mas você pode conseguir a chave matando o Rinus, ele é um rinoceronte maluco que a um tmepo atrás comeu a chave do castelo"
			text[15] = "VOCÊ: Droga, eu preciso recuperar o meu reator."
			text[16] = "FRED: É uma jornada perigosa viajante, você vai precisar de alguma arma, ele encheu os campos com seus capangas."
			text[17] = "VOCÊ: Eu tenho meu relógio mas estou sem céluas de recarga!"
			text[18] = "FRED: Você tem sorte, olhe para cima, acredito que deve ser do seu mundo."
			text[19] = "VOCÊ: Nossa, que conveniente, é uma célula de recarga"
			text[20] = "FRED: Então acredito que você já tem sua arma!"
			text[21] = "VOCÊ: Sim, muito obrigado Fred!"
			text[22] = "FRED: Viajante! Tome cuidado, e se conseguir derrotar ROORG, você será um grande herói aqui."
			text[23] = "VOCÊ: Só quero recuperar meus itens, mais uma vez obrigado, vou indo nessa."
			text[24] = "FRED: Boa sorte Lino!"
		break
		
		case "reator":
			text[0] = "VOCÊ: Consegui! agora é só voltar pra casa"
			text[1] = "Use o relógio pra voltar para a sua realidade"
		break
		
		case "Doctor_Finale":
			text[0] = "DOCTOR: Sabia que você conseguiria!"
			text[1] = "DOCTOR: Fique em paz garoto, você nos salvou"
			text[2] = "OBRIGADO POR JOGAR!!"
			global.endgame = true
	
	}
}
