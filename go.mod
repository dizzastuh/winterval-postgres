module github.com/dizzastuh/winterval-postgres

go 1.16

replace github.com/dizzastuh/winterval-postgres => ./

require (
	github.com/dizzastuh/winterval-postgres v0.0.0
	github.com/stretchr/testify v1.7.0 // indirect
	golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2 // indirect
	gorm.io/driver/postgres v1.0.8
	gorm.io/gorm v1.21.7
)
