# Start from a base image with Go installed
FROM golang:1.20-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY go.mod go.sum ./

# Download and cache Go dependencies
RUN go mod download

# Copy the source code into the container
COPY main.go .

# Build the Go application
RUN go build -o app


# Start from a fresh base image
FROM alpine:latest
# Set the working directory inside the container
WORKDIR /app
# Copy the built executable from the previous stage
COPY --from=builder /app/app .
# Set the entry point for the container
CMD ["./app"]

