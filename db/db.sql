CREATE TABLE exam_data (
  id SERIAL PRIMARY KEY,
  patient_cpf CHAR(14) NOT NULL,
  patient_name VARCHAR(255) NOT NULL,
  patient_email VARCHAR(255) NOT NULL,
  patient_birth DATE NOT NULL,
  patient_address VARCHAR(255) NOT NULL,
  patient_city VARCHAR(255) NOT NULL,
  patient_state VARCHAR(255) NOT NULL,
  doctor_crm CHAR(10) NOT NULL,
  doctor_state  CHAR(2) NOT NULL,
  doctor_name VARCHAR(255) NOT NULL,
  doctor_email VARCHAR(255) NOT NULL,
  exam_token CHAR(6) NOT NULL,
  exam_date DATE NOT NULL,
  exam_type VARCHAR(255) NOT NULL,
  exam_limit VARCHAR(7) NOT NULL,
  exam_result VARCHAR(4) NOT NULL
);

/*
INSERT INTO exam_data (patient_cpf, patient_name, patient_email, patient_birth,
					   patient_address, patient_city, patient_state, doctor_crm, doctor_state, 
					   doctor_name, doctor_email, exam_token, exam_date, exam_type,
					   exam_limit, exam_result)
		VALUES ('048.973.170-88', 'Emilly Batista Neto', 'gerald.crona@ebert-quigley.com', 
				'2001-03-11', '165 Rua Rafaela', 'Ituverava', 'Alagoas', 'B000BJ20J4', 'PI', 
				'Maria Luiza Pires', 'denna@wisozk.biz', 'IQCZ17', '2021-08-05', 'hemácias', '45-52', '97');
*/