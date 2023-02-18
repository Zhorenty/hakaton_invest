package model

import (
	"github.com/orktes/go-torch"
)

func NewModel() (*torch.JITModule, error) {
	module, err := torch.LoadJITModule("linear_regression_model.pt")
	if err != nil {
		return nil, err
	}

	return module, nil
}