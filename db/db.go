package db

import (
	"database/sql"

	_ "github.com/lib/pq"
)

func ConectaBancoDeDados() *sql.DB {
	conexao := "user=postgres dbname=alura_loja password=passw0rd host=localhost sslmode=disable"
	db, err := sql.Open("postgres", conexao)
	if err != nil {
		panic(err.Error())
	}
	return db
}
