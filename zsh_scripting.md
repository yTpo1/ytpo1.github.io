# Zsh scripting

For loop:
```bash
# Example 1
for i in {1..33}
do
	echo $i
done

# Example 2
for file in *; do wav-to-mp3 $file; done
```