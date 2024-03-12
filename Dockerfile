# Use the official golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local Go source code into the container
COPY demo.go .

# Build the Go binary inside the container
RUN go build -o demo .

# Expose the port on which the Go application will run (if applicable)
EXPOSE 8080

# Command to run the Go binary
CMD ["go", "run", "demo.go"]
