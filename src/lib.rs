use arma_rs::{arma, Extension, Group};

#[arma]
fn init() -> Extension {
    let ext = Extension::build()
        .group(
            "ops",
            Group::new()
            .command("shock", ops::shock),
        );
    ext.finish()
}

mod ops {
use std::collections::HashMap;
use reqwest::header::CONTENT_TYPE;
use arma_rs::Context;

    pub fn shock(ctx: Context) {
		std::thread::spawn(move || {
			let mut map = HashMap::new();
			map.insert("Username", "testdevice");
			map.insert("Name", "A3_Pishock_V0.0.1");
			map.insert("Code", "17519CD8GAP");
			map.insert("Intensity", "5");
			map.insert("Duration", "2");
			map.insert("Apikey", "87945e56-a33f-4c35-891a-895ddc7dfa2e");
			map.insert("Op", "0");

			let client = reqwest::blocking::Client::new();
			let res = client.post("https://do.pishock.com/api/apioperate")
				.header(CONTENT_TYPE, "application/json")
				.json(&map)
				.send()
				.expect("Failed to get response")
				.text()
				.expect("Failed to get payload");
			ctx.callback_data("example_timer", "done", Some(res));
		});
    }
}
