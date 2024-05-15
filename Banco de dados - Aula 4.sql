CREATE TABLE faculdade_gaming (
	ID SERIAL PRIMARY KEY,
	nick varchar(20),
	posicao varchar(20),
	salario numeric(10,2),
	localizacao varchar (50)
);

	INSERT INTO faculdade_gaming (nick, posicao, salario, localizacao)
		VALUES('Dexyszin', 'atuando', 5000.00, 'polo Saquarema'),
			  ('berre', 'atuando', 5000.00, 'polo Saquarema'),
			  ('zeka', 'reserva', 2500.00, 'polo Marica'),
			  ('desalmado', 'coach', 4000.00, 'polo Saquarema');
			  
	ALTER TABLE faculdade_gaming
		ADD COLUMN classe varchar(15);
		
	CREATE TABLE backup_faculdade_gaming AS SELECT * FROM faculdade_gaming;
	
	TRUNCATE TABLE faculdade_gaming;
	
	DROP TABLE faculdade_gaming;
	
	SELECT * FROM backup_faculdade_gaming;