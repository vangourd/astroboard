mod websocket;

use actix_web::{web, App, HttpResponse, HttpServer, Responder};
use log::{debug, error, log_enabled, info, Level};
use actix_web::middleware::Logger;
use actix_files as fs;
use websocket::{ws_index};

async fn greet() -> impl Responder {
    HttpResponse::Ok().body("Hello from Rust Actix-web!")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    std::env::set_var("RUST_LOG", "actix_web=info");

    HttpServer::new(|| {
        App::new()
            .wrap(Logger::default())
            .service(fs::Files::new("/","../frontend/dist").index_file("index.html"))
            .service(ws_index)
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}
