//Trabalho da disciplina de Fundamentos de Programação
//Alunos Participantes da Equipe:
//DÁRLEY FREIRE BARRETO
//THIAGO MENDES RIPARDO AGUIAR
program pptls;
uses crt;

function converte(s:string):byte;	// Função que converte jogada em um numero correspondente.
begin
	if(s='spock') then		//Covertendo a entrada spock para 0
		converte:=0;
	if(s='tesoura') then		//Covertendo a entrada tesoura para 1
		converte:=1;
	if(s='lagarto') then		//Covertendo a entrada lagarto para 2
		converte:=2;
	if(s='papel') then		//Covertendo a entrada papel para 3
		converte:=3;
	if(s='pedra') then		//Covertendo a entrada pedra para 4
		converte:=4;	
end;

function desconv(s:byte):string;        // Função inversa da anterior, pois converte numero correspondente em jogada.
begin
	if(s=0) then
		desconv:='Spock';	//Convertendo 0 em Spock
	if(s=1) then
		desconv:='Tesoura';	//Convertendo 1 em Tesoura
	if(s=2) then	
		desconv:='Lagarto';	//Convertendo 2 em Lagarto
	if(s=3) then	
		desconv:='Papel';	//Convertendo 3 em Papel
	if(s=4) then	
		desconv:='Pedra';	//Convertendo 4 em Pedra	
end;

procedure condicao(x1,x2,m,c1,c2:byte);  // x1 e x2 recebem as jogadas convertidas pela função converte, m seta o modo e c1 e c2 informam o placar do modo online.
Var
  	j1,j2:string;			// variaveis de denominação de jogadores, variam de acordo com o modo escolhido.
begin
	if(m=5) then			// Modo de setamento de denominação de jogadores do modo online(jogador vs jogador).
	begin
		j1:='Jogador 1 ';
		j2:='Jogador 2 ';
		writeln(j1,'joga ',desconv(x1));          // Impressão utilizando a denominação e a função desconv(que mostra uma jogada).
                writeln(j2,'joga ',desconv(x2));
	end;
	if(m=6) then                     // Modo de setamento de denominação de jogadores do modo online(jogador vs computador).
	begin
		j1:='Jogador ';
		j2:='Computador ';
		writeln(j1,'joga ',desconv(x1));      	// Impressão utilizando a denominação e a função desconv(que mostra uma jogada).         
                writeln(j2,'joga ',desconv(x2));
	end;
	if(m=7) then			// Modo de setamento de denominação de jogadores do modo offline.
	begin
		j1:='Jogador 1 ';
		j2:='Jogador 2 ';
	end;
	if((x1=8)or(x2=8)) then       // Caso jogador 1 e jogador 2 seja setado desta forma é porque a entrada foi inválida, usado somente no modo offiline.
		writeln('Entrada Inválida!'); 
	if((x1=0)and(x2=0)) then             		    // Impressão para os casos de empate através de comparação entre as jogadas.
                writeln('Empate');			   //Como podemos notar, todas as strings foram para a função que as transformou em números
        if((x1=1)and(x2=1)) then			  // E a compraação está toda utilizando números.
		writeln('Empate');			
        if((x1=2)and(x2=2)) then
                writeln('Empate');
        if((x1=3)and(x2=3)) then
                writeln('Empate');
        if((x1=4)and(x2=4)) then
                writeln('Empate');
        if((x1=1)and(x2=0)) then                            // Impressão da ação e de quem vence através de comparação entre as jogadas.
        begin                                          
                writeln('Spock derrete Tesoura');         	// Impressão de ações de acordo com as regras estabelecidas.
                writeln(j2,'vence a rodada');
        end;
        if((x1=2)and(x2=0)) then
        begin            
                writeln('Lagarto envenena Spock');
                writeln(j1,'vence a rodada');
        end;
        if((x1=3)and(x2=0)) then
        begin    
                writeln('Papel refuta Spock');
                writeln(j1,'vence a rodada');
        end;
        if((x1=4)and(x2=0)) then
        begin        
                writeln('Spock vaporiza Pedra');
                writeln(j2,'vence a rodada');
        end;
        if((x1=0)and(x2=1)) then            
        begin                                        
                writeln('Spock derrete Tesoura');
                writeln(j1,'vence a rodada');
        end;
        if((x1=2)and(x2=1)) then
        begin                                      
                writeln('Tesoura decapita Lagarto');
                writeln(j2,'vence a rodada');
        end;
        if((x1=3)and(x2=1)) then
        begin                                         
                writeln('Tesoura corta Papel');
                writeln(j2,'vence a rodada');
        end;
        if((x1=4)and(x2=1)) then
        begin                                          
                writeln('Pedra quebra Tesoura');
                writeln(j1,'vence a rodada');
        end;
        if((x1=0)and(x2=2)) then                   
        begin                                        
                writeln('Lagarto envenena Spock');
                writeln(j2,'vence a rodada');
        end;
        if((x1=1)and(x2=2)) then
        begin                                        
                writeln('Tesoura decapita Lagarto');
                writeln(j1,'vence a rodada');
        end;
        if((x1=3)and(x2=2)) then
        begin     
                writeln('Lagarto come Papel');
                writeln(j2,'vence a rodada');
        end;
        if((x1=4)and(x2=2)) then
        begin                                         
                writeln('Pedra esmaga Lagarto');
                writeln(j1,'vence a rodada');
        end;
        if((x1=0)and(x2=3)) then                 
        begin                                          
                writeln('Papel refuta Spock');
                writeln(j2,'vence a rodada');
        end;
        if((x1=1)and(x2=3)) then
        begin                                         
                writeln('Tesoura corta Papel');
                writeln(j1,'vence a rodada');
        end;
        if((x1=2)and(x2=3)) then                                
        begin                                                     
                writeln('Lagarto come Papel');
                writeln(j1,'vence a rodada');
        end;
        if((x1=4)and(x2=3)) then
        begin                                          
                writeln('Papel cobre Pedra');
                writeln(j2,'vence a rodada');
        end;
        if((x1=0)and(x2=4)) then              
        begin                                       
                writeln('Spock vaporiza Pedra');
                writeln(j1,'vence a rodada');
        end;
        if((x1=1)and(x2=4)) then
        begin                                      
                writeln('Pedra quebra Tesoura');
                writeln(j2,'vence a rodada');
        end;
        if((x1=2)and(x2=4)) then
        begin                                     
                writeln('Pedra esmaga Lagarto');
                writeln(j2,'vence a rodada');
	end;
        if((x1=3)and(x2=4)) then
        begin
                writeln('Papel cobre Pedra');
                writeln(j1,'vence a rodada');		
        end;
	if((m=5)xor(m=6)) then		// Placar para o Modo Online, exibido somente quando for setado para o mesmo.
	begin		
		writeLn();
		writeLn('Placar:');
		writeln(j1,': ',c1);
                writeln(j2,': ',c2);
	end;
end;

function cont1(x1,x2:byte):byte;        // Função que incrementa os contadores com as vitorias do jogador 1 ou jogador, x1 e x2 são as jogadas já convertidas através da função converte.
begin
	cont1:=0;
        if((x1=2)and(x2=0)) then           
		cont1:=1;
        if((x1=3)and(x2=0)) then
		cont1:=1;
        if((x1=0)and(x2=1)) then                     
		cont1:=1;
        if((x1=4)and(x2=1)) then 
		cont1:=1;
        if((x1=1)and(x2=2)) then  
		cont1:=1;
        if((x1=4)and(x2=2)) then 
		cont1:=1;
        if((x1=1)and(x2=3)) then
		cont1:=1;
        if((x1=2)and(x2=3)) then                                 
		cont1:=1;
        if((x1=0)and(x2=4)) then              
		cont1:=1;
        if((x1=3)and(x2=4)) then
		cont1:=1;	
end;

function cont2(x1,x2:byte):byte;        // Função que incrementa os contadores com as vitorias do jogador 2 ou do computador, x1 e x2 são as jogadas já convertidas através da função converte.
begin
	cont2:=0;
	if((x1=1)and(x2=0)) then                           
		cont2:=1;
	if((x1=4)and(x2=0)) then
		cont2:=1;
	if((x1=2)and(x2=1)) then     
		cont2:=1;
	if((x1=0)and(x2=2)) then                      
		cont2:=1;
	if((x1=3)and(x2=2)) then  
		cont2:=1;
	if((x1=3)and(x2=1)) then           
		cont2:=1;
	if((x1=0)and(x2=3)) then                  
		cont2:=1;
	if((x1=4)and(x2=3)) then    
		cont2:=1;
	if((x1=1)and(x2=4)) then   
		cont2:=1;
	if((x1=2)and(x2=4)) then
		cont2:=1;
end;

var // variáveis utilizadas no programa, entre elas, destacamos a txt, que vai receber as informações passadas pelo arquivo, quando o modo offiline é escolhido. As demais serão apresentadas no decorrer do programa.
	txt:text;                      
	l,j1,j2,w:string;
	i,c,c1,c2,t,k:integer;
	Opcao,j11,j22,m:byte;
begin //MODO ONLINE **********************************************************************************************************	
	if(paramcount=0) then            // Se nenhum valor de arquivo for recebido, então inicia-se o modo online.
	begin
		repeat
			repeat			
				clrscr;
   				writeln('BEM-VINDO AO MODO ONLINE'); // Menu do Programa com as devidas proteções de entradas inválidas. Menu criado por Dárley
   				writeln();
   				writeln('Selecione uma das opcoes abaixo e pressione ENTER:');
   				writeln('1. Jogador vs Computador');
   				writeln('2. Jogador vs Jogador');
   				writeln('3. Sair');
   				writeln();
   				write('Opcao escolhida: ');
   				readln(Opcao);
   				clrscr;
			until
				(Opcao=1)xor(Opcao=2)xor(Opcao=3); //Condições entre ou-exclusivos para a seleção da opção.
			
   			case Opcao of 

    			1:begin
				m:=6;     //Variável utilizada no procedimento "condicao" para setar o Modo Online(Jogador vs Computador).
				c1:=0;	  // Contadores utilizados para contar as vitorias de cada jogador.
				c2:=0;
    				repeat
          				writeln('Jogador entre com sua jogada'); 
          				readln(j1);
	  				lowercase(j1);		//função lowercase que coloca todos os caracteres minúsculos
	  				j1:=lowercase(j1);	//a variável string recebe sua antiga string convertida em minúsculo

          				while((j1<>'spock')xor(j1<>'lagarto')xor(j1<>'tesoura')xor(j1<>'papel')xor(j1<>'pedra')) do
          				begin
               					writeln();
               					writeln('Entrada Invalida!');
               					writeln('Jogador entre com sua jogada novamente');
               					readln(j1);
	       					lowercase(j1);
	       					j1:=lowercase(j1);
          				end;
					clrscr;

          				randomize;// Funções random e randomize, se encarregam de fazer as jogadas do computador, a função random seta um numero entre 0 e 4 e a randomize 'reinicia' a random a cada rodada.
          				i:=random(4);

					c1:=c1+cont1(converte(j1),i); // Contador de vitorias do jogador 1 sendo encrementado pela função cont1.
					c2:=c2+cont2(converte(j1),i); // Contador de vitorias do jogador 2 sendo encrementado pela função cont2.
					condicao(converte(j1),i,m,c1,c2); // Procedimento para mostrar jogadas e quem vence, setado para o modo online(jogador vs computador).
					repeat
               					writeln();
               					writeln('Deseja uma nova rodada?(sim/nao)');
               					readln(w);
	       					lowercase(w);
	       					w:=lowercase(w);
               					writeln();
          				until
               					(w='sim')xor(w='nao');
    	  				clrscr;
				until
          				w='nao';
			end;
      			2:begin
				m:=5;        // Variável utilizada no procedimento "condicao" para setar o Modo Online(Jogador vs Jogador).
				c1:=0;	     // Contadores utilizados para contar as vitorias de cada jogador.
				c2:=0;
				repeat
					writeln('Jogador 1 Insira sua jogada');
 					readln(j1);
 					lowercase(j1);                       
 					j1:=lowercase(j1);                       
 					while((j1<>'spock')xor(j1<>'lagarto')xor(j1<>'tesoura')xor(j1<>'papel')xor(j1<>'pedra')) do
 					begin
						writeln();
 						writeln('Entrada invalida');                            
 						writeln('Jogador 1 insira sua jogada novamente');   
 						readln(j1);                                           
						lowercase(j1);      	//função lowercase que coloca todos os caracteres minúsculos                                 
 						j1:=lowercase(j1);	//a variável string recebe sua antiga string convertida em minúsculo
					end;
					clrscr;

					writeln('Jogador 2 insira sua jogada');               
 					readln(j2);                                            
					lowercase(j2);
 					j2:=lowercase(j2);
 					while((j2<>'spock')xor(j2<>'lagarto')xor(j2<>'tesoura')xor(j2<>'papel')xor(j2<>'pedra')) do
 					begin
						writeln();
 						writeln('Entrada invalida');                               
 						writeln('Jogador 2 insira sua jogada novamente'); 
 						readln(j2);
						lowercase(j2);		//função lowercase que coloca todos os caracteres minúsculos
 						j2:=lowercase(j2);	//a variável string recebe sua antiga string convertida em minúsculo
 					end;
					clrscr;
					
					c1:=c1+cont1(converte(j1),converte(j2)); // Contador de vitorias do jogador 1 sendo encrementado pela função cont1.
					c2:=c2+cont2(converte(j1),converte(j2)); // Contador de vitorias do jogador 2 sendo encrementado pela função cont2.
					condicao(converte(j1),converte(j2),m,c1,c2); // Procedimento para mostrar jogadas e quem vence, setado para o modo online(jogador vs jogador).
					repeat
               					writeln();                       			
               					writeln('Deseja uma nova rodada?(sim/nao)');     
               					readln(w);                                       
	       					lowercase(w);                                     
	       					w:=lowercase(w);
               					writeln();
          				until
               					(w='sim')xor(w='nao');
	  				clrscr;
        			until
          				w='nao';
      			end;
		end;
		until 
			(Opcao=3)xor(w='nao');
		exit;
	end//MODO OFFLINE ************************************************************************************************************
	else				     // Senão recebe o arquivo parametro = 1.
	begin
		c:=0;                        // Contador utilizado para contar caracteres até antes da '/'. 
		i:=1;			     // Contador utilizado para contar caracteres até a '/'.
		m:=7;                        // Variável utilizada no procedimento "condicao" para setar o Modo Offline.
		c1:=0;                       // Contador utilizado para contar a vitoria do jogador 1.
		c2:=0;             	     // Contador utilizado para contar a vitoria do jogador 1      
		assign(txt,paramstr(1));
		reset(txt);
		clrscr;
		repeat
			j11:=8;		     // Jogador 1 setado como 8 para ser usado no procedimento, caso receba algum valor.
			j22:=8;		     // Jogador 2 setado como 8 para ser usado no procedimento, caso receba algum valor.
			readln(txt,l);       // Leitura do arquivo texto.
			while (l[i]<>'/') do // Estrutura de repetição para incrementar os contadores c e i, usado para determinar posição. Implementador por ambos.
			begin
				c:=c+1;
				i:=i+1;	
			end;
			l:=lowercase(l);     // Lower case dos caracteres na linha e logo abaixo as condições de leitura e recebimento das variavel j11 (jogador 1).
			//Todas as comparações abaixo foram feitas por Thiago Ripardo. Bem como as comprações para o jogador 2
			if((l[1]='s')and(l[2]='p')and(l[3]='o')and(l[4]='c')and(l[5]='k')and(l[i]='/')) then
				j11:=0;
			if((l[1]='t')and(l[2]='e')and(l[3]='s')and(l[4]='o')and(l[5]='u')and(l[6]='r')and(l[7]='a')and(l[i]='/')) then
				j11:=1;
			if((l[1]='l')and(l[2]='a')and(l[3]='g')and(l[4]='a')and(l[5]='r')and(l[6]='t')and(l[7]='o')and(l[i]='/')) then
				j11:=2;
			if((l[1]='p')and(l[2]='a')and(l[3]='p')and(l[4]='e')and(l[5]='l')and(l[i]='/')) then
				j11:=3;
			if((l[1]='p')and(l[2]='e')and(l[3]='d')and(l[4]='r')and(l[5]='a')and(l[i]='/')) then
				j11:=4;
			
			k:=i+1;              // Contador utilizado para determinar caracteres da linha após a '/'.
			t:=length(l);        // Variável que recebe o numero de caracteres na linha e logo abaixo as condições de leitura e recebimento das variavel j22 (jogador 2).
			if((l[i]='/')and(l[k]='s')and(l[k+1]='p')and(l[k+2]='o')and(l[k+3]='c')and(l[t]='k')) then
				j22:=0;
			if((l[i]='/')and(l[k]='t')and(l[k+1]='e')and(l[k+2]='s')and(l[k+3]='o')and(l[k+4]='u')and(l[k+5]='r')and(l[t]='a')) then
				j22:=1;
			if((l[i]='/')and(l[k]='l')and(l[k+1]='a')and(l[k+2]='g')and(l[k+3]='a')and(l[k+4]='r')and(l[k+5]='t')and(l[t]='o')) then
				j22:=2;
			if((l[i]='/')and(l[k]='p')and(l[k+1]='a')and(l[k+2]='p')and(l[k+3]='e')and(l[t]='l')) then
				j22:=3;
			if((l[i]='/')and(l[k]='p')and(l[k+1]='e')and(l[k+2]='d')and(l[k+3]='r')and(l[t]='a')) then
				j22:=4;
			c:=0;
			i:=1;	
			
			c1:=c1+cont1(j11,j22);          // Contador de vitorias do jogador 1 sendo encrementado pela função cont1. 
			c2:=c2+cont2(j11,j22);		// Contador de vitorias do jogador 2 sendo encrementado pela função cont2.
			condicao(j11,j22,m,0,0);	// Procedimento para mostrar jogadas e quem vence, setado para o modo offiline.
        	until
          		eof(txt);
		close(txt);
		writeln();
		writeln('Placar final:');		// Placar Final do Modo Offiline. Feito por Darley
		writeln('Jogador 1: ',c1);
        	writeln('Jogador 2: ',c2);
		writeln();
		writeln('Pressione ENTER para sair');	// Encerramento do Modo Offiline.
		readln();
		exit;
	end;
end.							// Encerramento Total.
