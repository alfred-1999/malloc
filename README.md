# Malloc Project

A simple C program demonstrating **dynamic memory allocation** on the heap using `malloc()` and `free()`.

## What Is This?

This project reads a number of grades from the user, dynamically allocates memory to store them, prints them back along with their memory addresses, and then safely frees the memory. It's a hands-on example for learning how manual memory management works in C.

## How It Works

1. **Ask for input size** — The program asks how many grades you want to store.
2. **Allocate memory** — `malloc()` reserves space on the heap for that many `char` values and returns a pointer.
3. **Check allocation** — If `malloc()` returns `NULL`, the program reports failure and exits.
4. **Fill the array** — A loop reads each grade into the allocated memory using `scanf`.
5. **Display results** — Another loop prints each grade and its memory address.
6. **Free memory** — `free()` returns the memory to the system, and the pointer is set to `NULL` to avoid a dangling pointer.

### Key Concepts

| Function | Purpose |
|----------|---------|
| `malloc()` | Allocates memory on the heap; returns a pointer |
| `free()`   | Releases previously allocated memory |
| `NULL` check | Prevents crashes from failed allocations |
| `pointer = NULL` | Avoids dangling pointers after freeing |

## How to Build and Run

Using the provided `Makefile`:

```bash
make            # build the executable
./build/malloc_executable   # run the program
make clean      # remove build artifacts
```

Incase of problems: `Makefile:21: *** missing separator. Stop`
`Fix with one command`
```bash
sed -i 's/^    /\t/' Makefile
```
`Verify it worked` 
```bash
cat -A Makefile
```
`Output`
```bash
...
$(TARGET): $(OBJS)
^I@mkdir -p $(BUILD_DIR)
^I$(CC) $(CFLAGS) -o $@ $^
...
```
## Example Results

```
Enter the number of grades: 3
Enter grade 1: A
Enter grade 2: B
Enter grade 3: C
Grade 1: A
Address of grade 1: 0x55e3f2a0
===============================
Grade 2: B
Address of grade 2: 0x55e3f2a1
===============================
Grade 3: C
Address of grade 3: 0x55e3f2a2
===============================
```

The addresses are **contiguous** (increment by 1 byte each) because the grades are stored in a single allocated block.

## Author

**alfredmfini@gmail.com**
