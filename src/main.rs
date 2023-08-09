use std::collections::HashMap;
use reqwest::header::CONTENT_TYPE;

#[tokio::main]
async fn main(){
    let mut map = HashMap::new();
    map.insert("Username", "testdevice");
    map.insert("Name", "A3_Pishock_V0.0.1");
    map.insert("Code", "17519CD8GAP");
    map.insert("Intensity", "5");
    map.insert("Duration", "2");
    map.insert("Apikey", "87945e56-a33f-4c35-891a-895ddc7dfa2e");
    map.insert("Op", "0");

    let client = reqwest::Client::new();
    let res = client.post("https://do.pishock.com/api/apioperate")
        .header(CONTENT_TYPE, "application/json")
        .json(&map)
        .send()
        .await
        .expect("failed to get response")
        .text()
        .await
        .expect("failed to get payload");

    println!("Response: {}", res);
}
