FROM python:3.11.7

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY app.py /app/
COPY .env /app/

# Add .env file with GOOGLE_API_KEY
RUN echo "GOOGLE_API_KEY=AIzaSyChzWGI8YeOC5bA0GmYj9iR_2fteaWXIkA" > .env

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run app.py when the container launches
CMD ["streamlit", "run", "app.py"]
