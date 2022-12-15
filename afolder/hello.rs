use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    let query = &args[1];
    // index 1 because 0 is the name of the program

    println!("Rust says: {0}", query);
}
