package main

import (
	"errors"
)

func example(code string) (int, error) {
	if code == "hoge" {
		return 1, nil
	} else if code == "hogehoge" {
		return 1, nil
	} else if code == "hogehogehoge" {
		return 1, nil
	} else if code == "hogehogehogehoge" {
		return 1, nil
	}
	return 0, errors.New("code must be hoge")
}
