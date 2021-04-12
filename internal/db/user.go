package db

import "fmt"

type User struct {
	Id   int64
	Name string
}

func (u User) String() string {
	return fmt.Sprintf("Username: %s\nID: %d", u.Name, u.Id)
}
