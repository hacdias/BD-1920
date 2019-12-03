DROP TABLE IF EXISTS d_utilizador CASCADE;
DROP TABLE IF EXISTS d_tempo CASCADE;
DROP TABLE IF EXISTS d_local CASCADE;
DROP TABLE IF EXISTS d_lingua CASCADE;
DROP TABLE IF EXISTS f_anomalia CASCADE;

CREATE TABLE d_utilizador (
  id_utilizador SERIAL NOT NULL PRIMARY KEY,
  tipo VARCHAR(80) NOT NULL
);

CREATE TABLE d_tempo (
  id_tempo SERIAL NOT NULL PRIMARY KEY,
  dia INT NOT NULL,
  dia_da_semana INT NOT NULL,
  semana INT NOT NULL,
  mes INT NOT NULL,
  trimestre INT NOT NULL,
  ano INT NOT NULL
);

CREATE TABLE d_local (
  id_local SERIAL NOT NULL PRIMARY KEY,
  latitude INT NOT NULL,
  longitude INT NOT NULL,
  nome VARCHAR(80) NOT NULL
);

CREATE TABLE d_lingua (
  id_lingua SERIAL NOT NULL PRIMARY KEY,
  lingua VARCHAR(80) NOT NULL,
  pais VARCHAR(80) NOT NULL,
);

CREATE TABLE f_anomalia (
  id_utilizador INT NOT NULL,
  id_tempo INT NOT NULL,
  id_local INT NOT NULL,
  id_lingua INT NOT NULL,
  tipo_anomalia VARCHAR(80) NOT NULL,
  com_proposta BOOLEAN NOT NULL,
  FOREIGN KEY (id_utilizador) REFERENCES d_utilizador(id_utilizador) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_tempo) REFERENCES d_tempo(id_tempo) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_local) REFERENCES d_local(id_local) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_lingua) REFERENCES d_lingua(id_lingua) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO d_utilizador(tipo) VALUES ('regular')
  SELECT * FROM utilizador_regular;