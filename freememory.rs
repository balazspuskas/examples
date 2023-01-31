use actix_web::{get, web, App, HttpResponse, HttpServer};
use std::fs;

#[get("/memory")]
async fn memory() -> HttpResponse {
    let memory = sys_info::mem_info().await;
    let free_memory = memory.free / 1024 / 1024;

    HttpResponse::Ok().json(json!({ "free_memory_mb": free_memory }))
}

#[get("/disk")]
async fn disk() -> HttpResponse {
    let disk = fs::space("/").unwrap();
    let free_disk = disk.free / 1024 / 1024 / 1024;

    HttpResponse::Ok().json(json!({ "free_disk_gb": free_disk }))
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .route("/memory", web::get().to(memory))
            .route("/disk", web::get().to(disk))
    })
    .bind("localhost:30779")?
    .run()
    .await
}