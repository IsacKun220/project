# Management of 3D Printing data
### Team 02

This repository will follow the ruby style guidelines outlined [here](https://rubystyle.guide/).

### Prerequisites

- Ruby `v3.1.2` 
- Bundler `v2.5.4`
- Rails `v7.0.8`

### Linting
Before commiting, make sure to run **rubocop** to check all ruby source files for errors.  
This will outline any potential errors in the code.
```bash
rubocop 
```

To autocorrect the errors, use the `-a` flag
```bash
rubocop -a
```

To only run the linter on a selected file, use
```bash
rubocop [list of dirs  / files]
```


### Running the application
To run the application, start the development server using
```bash
bin/rails server
```
Head to the specified URL (*usually* `localhost:3000`) on your web browser. 

