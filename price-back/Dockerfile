FROM golang:latest

RUN apt-get update && apt-get install -y netcat

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build ./cmd/main.go

EXPOSE 8080

CMD ["./main"]