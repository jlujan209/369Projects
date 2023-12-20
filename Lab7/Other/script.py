# Open the input file for reading
input_filename = "instruction_memory_reference.mem"
output_filename = "instruction_memory.mem"

with open(input_filename, 'r') as input_file:
    # Read each line, extract the first word (if it exists), and store it in a list
    first_words = [line.split()[0] if line.strip() else '' for line in input_file]

# Open the output file for writing
with open(output_filename, 'w') as output_file:
    # Write each first word to the output file
    for word in first_words:
        output_file.write(word + '\n')

print(f"Extraction completed. Result written to {output_filename}")

