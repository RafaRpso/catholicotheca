CREATE DATABASE dbCatholicoteca;
USE dbCatholicoteca;
CREATE TABLE tbUsuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nomeUsuario VARCHAR(100) NOT NULL,
	emailUsuario VARCHAR(60) NOT NULL,
	senhaUsuario VARCHAR(45) NOT NULL
);

CREATE TABLE tbCanto (
	idCantos INT PRIMARY KEY AUTO_INCREMENT,
	tituloCanto VARCHAR(45) NOT NULL,
	autorCanto VARCHAR(45) NOT NULL,
	anoCriacao VARCHAR(20) NOT NULL,
	letraLatim VARCHAR(4000) NOT NULL,
	letraPtbr VARCHAR(4000) NOT NULL,
	urlPartitura VARCHAR(400) NOT NULL,
	urlCapa VARCHAR(400) NOT NULL,
	fkUsuario INT, 
	FOREIGN KEY (fkUsuario) REFERENCES tbUsuario(idUsuario),
	likesCanto INT 
);
CREATE TABLE tbLivro (
	idLivros INT PRIMARY KEY AUTO_INCREMENT,
	tituloLivro VARCHAR(45) NOT NULL,
	autorLivro VARCHAR(45) NOT NULL,
	anoCriacaoLivro VARCHAR(20) NOT NULL,
	urlCapa VARCHAR(200) NOT NULL,  
	linkPdfLivro VARCHAR(200) NOT NULL,
	fkUsuario INT, 
	FOREIGN KEY (fkUsuario) REFERENCES tbUsuario(idUsuario),
	likesLivro INT 
);

INSERT INTO tbUsuario VALUES 
(NULL, 'ADMINISTRADOR','adm@adm.com','adm123'),
(NULL,'rafael alves raposo','rafael@rafa.com','rafael05');

INSERT INTO tbCanto VALUES (NULL, 'Adoro te Devote','São Tomás de Aquino', '', 'Adoro te devote, latens Deitas, Quae sub his figuris vere latitas: Tibi se cor meum totum subiicit, Quia te contemplans totum deficit. Visus, tactus, gustus in te fallitur, Sed auditu solo tuto creditur. Credo quidquid dixit Dei Filius: Nil hoc verbo Veritatis verius. In cruce latebat sola Deitas, At hic latet simul et humanitas; Ambo tamen credens atque confitens, Peto quod petivit latro paenitens. Plagas, sicut Thomas, non intueor; Deum tamen meum te confiteor. Fac me tibi semper magis credere, In te spem habere, te diligere. O memoriale mortis Domini! Panis vivus, vitam praestans homini! Praesta meae menti de te vivere Et te illi semper dulce sapere. Pie pellicane, Iesu Domine, Me immundum munda tuo sanguine. Cuius una stilla salvum facere Totum mundum quit ab omni scelere. Iesu, quem velatum nunc aspicio, Oro fiat illud quod tam sitio; Ut te revelata cernens facie Visu sim beatus tuae gloriae.','Eu vos adoro devotamente, ó Divindade escondida, Que verdadeiramente oculta-se sob estas aparências, A Vós, meu coração submete-se todo por inteiro, Porque, vos contemplando, tudo desfalece. A vista, o tato, o gosto falham com relação a Vós Mas, somente em vos ouvir em tudo creio. Creio em tudo aquilo que disse o Filho de Deus, Nada mais verdadeiro que esta Palavra de Verdade. Na cruz, estava oculta somente a vossa Divindade, Mas aqui, oculta-se também a vossa Humanidade. Eu, contudo, crendo e professando ambas, Peço aquilo que pediu o ladrão arrependido. Não vejo, como Tomé, as vossas chagas Entretanto, vos confesso meu Senhor e meu Deus Faça que eu sempre creia mais em Vós, Em vós esperar e vos amar. Ó memorial da morte do Senhor, Pão vivo que dá vida aos homens, Faça que minha alma viva de Vós, E que à ela seja sempre doce este saber. Senhor Jesus, bondoso pelicano, Lava-me, eu que sou imundo, em teu sangue Pois que uma única gota faz salvar Todo o mundo e apagar todo pecado. Ó Jesus, que velado agora vejo Peço que se realize aquilo que tanto desejo Que eu veja claramente vossa face revelada Que eu seja feliz contemplando a vossa glória. Amém','','https://i.pinimg.com/736x/ec/49/98/ec4998e4b27af0dc14440168b6a2cb4d.jpg',1,NULL); 

INSERT INTO tbCanto VALUES (NULL, 'Angelus Domini','Papa Gregório IX ', '', 'V/. Angelus Dómini nuntiávit Maríæ. R/. Et concépit de Spíritu Sancto. Ave, Maria. V/. Ecce ancílla Dómini. R/. Fiat mihi secúndum verbum tuum. Ave, Maria. V/. Et Verbum caro factum est. R/. Et habitávit in nobis. Ave, Maria. V/. Ora pro nobis, sancta Dei Génetríx. R/. Ut digni efficiámur promissionibus Christi. Oremus. Grátiam tuam, quæsumus, Dómine, méntibus nostris infúnde: ut qui, Angelo nuntiánte, Christi Filii tui incarnatió- nem cognóvimus, per passiónem eius et crucem ad resurrec- tiónis glóriam perducámur. Per eumdem Christum Dóminum nostrum. R/. Amen.','V/. O anjo do Senhor anunciou a Maria. R/. E Ela concebeu do Espírito Santo. Ave Maria. V/. Eis aqui a escrava do Senhor. R/. Faça-se em mim segundo a vossa palavra. Ave Maria. V/. E o Verbo divino se fez carne. R/. E habitou entre nós. Ave Maria. V/. Rogai por nós Santa Mãe de Deus. R/. Para que sejamos dignos das graças de Cristo. Oremos. Infundi, Senhor, nós Vos pedimos, em nossas almas a vossa graça, para que nós, que conhecemos pela Anunciação do Anjo a Encarnação de Jesus Cristo, vosso Filho, cheguemos por sua Paixão e sua Cruz à glória da Ressurreição. Pelo mesmo Jesus Cristo, Senhor nosso. Amém.','','https://i.pinimg.com/736x/0c/12/42/0c1242f0bc3be50b8775aad6e710aa6c.jpg',1,NULL); 

INSERT INTO tbCanto VALUES (NULL, 'Salve Regina ',' Hermano Contracto', '', 'Salve, Regina, mater misericordiae Vita, dulcedo, et spes nostra, salve. Ad te clamamus, exsules, filii evae. Ad te suspiramus, gementes et flentes in hac lacrimarum valle. Eia ergo, Advocata nostra, illos tuos misericordes oculos ad nos converte. Et Iesum, benedictum fructum ventris tui, nobis post hoc exsilium ostende. O clemens, O pia, O dulcis Virgo Maria. Ora pro nobis sancta Dei Genetrix. Ut digni efficiamur promissionibus Christi. Amen.',' Texto em português:[6] Salve Rainha, Mãe de Misericórdia, Vida, doçura e esperança nossa, salve! A Vós bradamos, os degredados filhos de Eva. A Vós suspiramos, gemendo e chorando neste vale de lágrimas. Eia, pois, advogada nossa, Esses Vossos olhos misericordiosos A nós volvei, E, depois desse desterro, Mostrai-nos Jesus, bendito fruto do Vosso Ventre. Ó Clemente, Ó Piedosa, Ó Doce Sempre Virgem Maria. Rogai por nós Santa Mãe de Deus, Para que sejamos dignos das promessas de Cristo. Amém.','','https://i.pinimg.com/736x/c6/81/f4/c681f4e8cc6105900cb4cac6cbb1ecf4.jpg',1,NULL); 

INSERT INTO tbCanto VALUES (NULL, 'Agni Partene','Igreja Ortodoxa', '', 'Agní Parthéne Déspina, Áhrante Theotóke, Hére Nímfi Anímfefte. Parthéne Mítir Ánassa, Panéndrose te póke. Hére Nímfi Anímfefte. Ipsilotéra Uranón, aktínon lamprotéra, Hére Nímfi Anímfefte. Hará parthenikón horón, angelon ipertéra, Hére Nímfi Anímfefte. Eklamprotéra uranón fotós katharotéra, Hére Nímfi Anímfefte. Seu Uraníon stratión pasón agiotéra. Hére Nímfi Anímfefte. 2 María Aipárthene kósmu pantós Kiría, Hére Nímfi Anímfefte. Áhrante Nímfi Pánagne, Déspina Panagía, Hére Nímfi Anímfefte. María Nímfi Ánassa, harás imón etía, Hére Nímfi Anímfefte. Korí semní Vasílissa, Mítir iperagía, Hére Nímfi Anímfefte. Timiotéra Heruvím, iperendoxotera Hére Nímfi Anímfefte. Seu asomáton Serafím, seu Thrónon ipertéra. Hére Nímfi Anímfefte. 3 Aqui está o ásma Heruvím, aqui ímnos angelon, Hére Nímfi Anímfefte. Hére odí ton Serafím, hará tón Arhangélon, Hére Nímfi Anímfefte. Hére iríni ke hará, limín tis sotirías, Hére Nímfi Anímfefte. Pastás tu Lógu ierá, ánthos tis aftharsías, Hére Nímfi Anímfefte. Hére Parádise trifís, zoís te eonías, Hére Nímfi Anímfefte. Hére to xílon tis zoís, pigí athanasías. Hére Nímfi Anímfefte. 4 Se iketévo Déspina, Se, nin, epikalúme, Hére Nímfi Anímfefte. Disopó Pantánassa, Sin hárin exetúme. Hére Nímfi Anímfefte. Korí semní ke áspile, Déspina Panagía, Hére Nímfi Anímfefte. Epákusón mu, áhrante, Kósmu pantós kiría, Hére Nímfi Anímfefte. Antilavú mu, ríse me apó tu polemíu, Hére Nímfi Anímfefte. Ke klironómon díxon me zoís tis eoníu. Hére Nímfi Anímfefte. ','1 Ó Virgem Pura, Soberana, Imaculada e Mãe de Deus, Alegre-se, noiva solteira. Ó Virgem Mãe Rainha, Velocino coberto de orvalho, Alegre-se, noiva solteira. Mais alto que o céu, mais brilhante que o sol, Alegre-se, noiva solteira. Ó alegria de virgens superando coros angelicais, Alegre-se, noiva solteira. Mais esplêndido que o céu, mais puro que a luz, Alegre-se, noiva solteira. Mais santo do que as multidões das hostes celestiais, Alegre-se, noiva solteira. 2 Maria sempre Virgem, a Soberana do universo, Alegre-se, noiva solteira. Noiva Imaculada Virgem, Santíssima Rainha, toda pura, Alegre-se, noiva solteira. Maria, Esposa Soberana, a fonte de nossa alegria, Alegre-se, noiva solteira. Ó jovem venerável Virgem, Santíssima Mãe Soberana, Alegre-se, noiva solteira. Mais venerável que o Querubim e muito mais glorioso Alegre-se, noiva solteira. Do que o Serafim incorpóreo, mais alto do que os Tronos. Alegre-se, noiva solteira. 3 Alegrai-vos, canto dos Querubins, alegrai-vos, hino dos Anjos, Alegre-se, noiva solteira. Canção do Serafim. Alegrem-se, alegria dos Arcanjos, Alegre-se, noiva solteira. Alegrai-vos, Paz e Alegria. Alegrem-se, porto de salvação, Alegre-se, noiva solteira. Da Câmara Nupcial da Palavra Sagrada, Flor da Incorruptibilidade, Alegre-se, noiva solteira. Alegrem-se, Paraíso de alegria da vida eterna, Alegre-se, noiva solteira. Alegrai-vos, Árvore da vida e Fonte da imortalidade, Alegre-se, noiva solteira. 4 Eu oro a Você, ó Soberano, eu invoco Você agora, Alegre-se, noiva solteira. Rogo-te, Rainha do mundo, imploro a tua graça, Alegre-se, noiva solteira. Ó pura e venerável Virgem, santíssima Soberana, Alegre-se, noiva solteira. Eu imploro fervorosamente, ó templo santificado, Alegre-se, noiva solteira. Ajuda-me, livra-me daquele que me faz guerra, Alegre-se, noiva solteira. E me faça um herdeiro da Vida Eterna, Alegre-se, noiva solteira ','','https://i.pinimg.com/564x/b2/37/14/b237146bab60554d20d32b960e0c44c5.jpg',1, NULL); 

INSERT INTO tbCanto VALUES (NULL, 'Credo Niceno Constantinopolitano ','Primeiro Concílio de Niceia', '', 'Credo in unum Deum, Patrem omnipoténtem, Factórem caeli et terrae, Visibílium ómnium et invisibílium. Et in unum Dóminum Iesum Christum, Fílium Dei Unigénitum, Et ex Patre natum ante ómnia saecula. Deum de Deo, lumen de lúmine, Deum verum de Deo vero, Génitum, non factum, consubstantiálem Patri: Per quem ómnia facta sunt. Qui propter nos hómines et propter nostram salútem Descéndit de caelis. Et incarnátus est de Spíritu Sancto Ex María Vírgine, et homo factus est. Crucifíxus étiam pro nobis sub Póntio Piláto; Passus, et sepúltus est, Et resurréxit tértia die, secúndum Scriptúras, Et ascéndit in caelum, sedet ad déxteram Patris. Et íterum ventúrus est cum glória, Iudicáre vivos et mórtuos, Cuius regni non erit finis. Et in Spíritum Sanctum, Dóminum et vivificántem: Qui ex Patre Filióque procédit. Qui cum Patre et Fílio simul adorátur et conglorificátur: Qui locútus est per prophétas. Et unam, sanctam, cathólicam et apostólicam Ecclésiam. Confíteor unum baptísma in remissiónem peccatorum. Et expecto resurrectionem mortuorum, Et vitam ventúri saeculi. Amen','Creio em um só Deus, Pai Todo-Poderoso, criador do céu e da terra, / de todas as coisas visíveis e invisíveis. / Creio em um só Senhor, Jesus Cristo, Filho Unigênito de Deus, / nascido do Pai antes de todos os séculos: Deus de Deus, luz da luz, / Deus verdadeiro de Deus verdadeiro, / gerado, não criado, consubstancial ao Pai. / Por ele todas as coisas foram feitas. / E por nós, homens, e para nossa salvação, desceu dos céus: (aqui todos se ajoelhem) e se encarnou pelo Espírito Santo, / no seio da Virgem Maria, e se fez homem. (aqui todos se levantem) Também por nós foi crucificado sob Pôncio Pilatos; / padeceu e foi sepultado. / Ressuscitou ao terceiro dia, / conforme as Escrituras, / e subiu aos céus, / onde está sentado à direita do Pai. / E de novo há de vir, / em sua glória, / para julgar os vivos e os mortos; / e o seu reino não terá fim. / Creio no Espírito Santo, / Senhor que dá a vida, / e procede do Pai e do Filho; / e com o Pai e o Filho é adorado e glorificado: / ele que falou pelos profetas. / Creio na Igreja, una, santa, católica e apostólica. / Professo um só batismo para remissão dos pecados. / E espero a ressurreição dos mortos / e a vida do mundo que há de vir. - Amém.','','https://i.pinimg.com/564x/0a/a3/16/0aa316ee6148cbee7f13a01bf5101102.jpg',1, NULL); 

INSERT INTO tbCanto VALUES (NULL, 'Agnus Dei','Igreja Católica Romana', '', 'Agnus Dei, Qui tollis peccata mundi, Miserere nobis. Agnus Dei, Qui tollis peccata mundi, Miserere nobis. Agnus Dei, Qui tollis peccata mundi, Dona nobis pacem.','Cordeiro de Deus, Que tirais o pecado do mundo, Tende piedade de nós. Cordeiro de Deus, Que tirais o pecado do mundo, Tende piedade de nós. Cordeiro de Deus, Que tirais o pecado do mundo, Dai-nos a paz.','','https://i.pinimg.com/736x/96/52/28/965228e9e6a83380cf508f0ab26ccc42.jpg',1, NULL); 




INSERT INTO tbLivro VALUES (NULL, 'Suma Theologica','São Tomás de Aquino', '','https://fasbam.edu.br/wp-content/uploads/2019/10/Apoteose-de-Santo-Toma%CC%81s.jpg','https://sumateologica.files.wordpress.com/2017/04/suma-teolc3b3gica.pdf',1,null);


INSERT INTO tbLivro VALUES (NULL, 'Os Princípios da Realidade Natural','São Tomás de Aquino', '','https://img2.docero.com.br/image/l/vvcvs1.png','https://app.box.com/s/yvqxbi8hamxyd0yyeo9m4d333erwqu4o',NULL); 

INSERT INTO tbLivro VALUES (NULL, 'Ensayos sobre Pedagogía','São Tomás de Aquino', '1949','https://lh3.googleusercontent.com/-nDPzlb4yVxU/YVhE2EQioBI/AAAAAAAADPE/1ofdkPD7NuMDJES4I4iLWmKMZ7VLdghYgCLcBGAsYHQ/w480-h640/image.png','https://filedu.files.wordpress.com/2010/03/ensayos-sobre-pedagogia-alberto-garcia-vieyrao-p.pdf',1,null);


INSERT INTO tbLivro VALUES (NULL, 'O Mandamento da Caridade','São Tomás de Aquino', '','https://2.bp.blogspot.com/-WQUhJxp75mc/TitMRQvhZlI/AAAAAAAAEDM/QFuELbWwG7w/s400/254405_2084469316224_1379856701_32468505_8356085_n.jpg','https://onedrive.live.com/redir?resid=C66F182E3FF9E7AA!281&authkey=!AKvNYPqVfeIX-44&ithint=file%2cdocx',2,null); 


-- qual usuário enviou qual livro
select idLivros,tituloLivro,nomeUsuario FROM tbUsuario JOIN tbLivro ON idUsuario = fkUsuario;

-- qual usuario enviou qual canto
select idCantos, tituloCanto, idUsuario, nomeUsuario FROM tbUsuario JOIN tbCanto ON fkUsuario = idUsuario; 


-- QUANTIDADE DE LIVROS UPADOS
select count(idLivros) FROM tbUsuario JOIN tbLivro ON idUsuario = fkUsuario AND fkUsuario = 2; --ao inves de 2, id usuario  
-- QUANTIDADE DE CANTOS UPADOS
select count(idCantos) FROM tbUsuario JOIN tbCanto ON idUsuario = fkUsuario AND fkUsuario = 2; --ao inves de 2, id usuario  