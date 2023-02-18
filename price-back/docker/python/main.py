import uvicorn
from fastapi import FastAPI
from typing import List
import torch

app = FastAPI()

# Load the PyTorch model
linear_regression = torch.load("./nn_class.pt")

@app.get("/ping")
def ping():
  return {"message": "pong"}

@app.get("/predict-price")
def predict(features: List[float]):
    # Convert the input features to a PyTorch tensor
    inputs = torch.tensor(features).unsqueeze(0)

    # Make a prediction using the model
    outputs = linear_regression(inputs)

    # Return the predicted value
    return {"prediction": outputs.item()}

if __name__ == "__main__":
    uvicorn.run(app, host=" ", port=8000)