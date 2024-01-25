#![allow(unused_must_use)] // Suppresses arma-rs context warning
use arma_rs::{arma, Extension, Group};

#[arma]
fn init() -> Extension {
    let ext = Extension::build()
        .group(
            "ops",
            Group::new()
            .command("shock", ops::shock)
            .command("vibrate", ops::vibrate)
            .command("beep", ops::beep),
        );
    ext.finish()
}

mod ops {
use std::collections::HashMap;
use reqwest::header::CONTENT_TYPE;
use arma_rs::Context;

    pub fn shock(ctx: Context, username: String, sharecode: String, api_key: String, intensity: u32, duration: u32) -> String {
		
		// Gather Call Context
		let call_context = format!(
			"{:?},{:?},{:?},{:?}",
			ctx.caller(),
			ctx.source(),
			ctx.mission(),
			ctx.server()
		);
		
		// Sanity Checks, if you trigger these, you probably shouldn't be here!
		match intensity {
			1..=100 => {}
			_ => {
				return format!("Intensity out of range!,{:?}", call_context);
			}
		}
		
		match duration {
			1..=15 => {}
			_ => {
				return format!("Duration out of range!,{:?}", call_context);
			}
		}
		
		// Spawns thread for the HTTPS Request, Prevents freezing the game while waiting response
		std::thread::spawn(move || {
			let mut map = HashMap::new();
			map.insert("Username".to_string(), username);
			map.insert("Name".to_string(), "A3_Pishock_V2.0.0".to_string());
			map.insert("Code".to_string(), sharecode);
			map.insert("Intensity".to_string(), intensity.to_string());
			map.insert("Duration".to_string(), duration.to_string());
			map.insert("Apikey".to_string(), api_key);
			map.insert("Op".to_string(), "0".to_string());

			let client = reqwest::blocking::Client::new();
			let res = client.post("https://do.pishock.com/api/apioperate")
				.header(CONTENT_TYPE, "application/json")
				.json(&map)
				.send()
				.expect("Failed to get response")
				.text()
				.expect("Failed to get payload");
			ctx.callback_data("arma3_pishock", "Shock", Some(res));
		});
		
		// Returns success message with call context
		return format!("Shock command sent successfully,{:?}", call_context);
    }
	
    pub fn vibrate(ctx: Context, username: String, sharecode: String, api_key: String, intensity: u32, duration: u32) -> String {
		
		// Gather Call Context
		let call_context = format!(
			"{:?},{:?},{:?},{:?}",
			ctx.caller(),
			ctx.source(),
			ctx.mission(),
			ctx.server()
		);
		
		// Sanity Checks, if you trigger these, you probably shouldn't be here!
		match intensity {
			1..=100 => {}
			_ => {
				return format!("Intensity out of range!,{:?}", call_context);
			}
		}
		
		match duration {
			1..=15 => {}
			_ => {
				return format!("Duration out of range!,{:?}", call_context);
			}
		}
		
		// Spawns thread for the HTTPS Request, Prevents freezing the game while waiting response
		std::thread::spawn(move || {
			let mut map = HashMap::new();
			map.insert("Username".to_string(), username);
			map.insert("Name".to_string(), "A3_Pishock_V2.0.0".to_string());
			map.insert("Code".to_string(), sharecode);
			map.insert("Intensity".to_string(), intensity.to_string());
			map.insert("Duration".to_string(), duration.to_string());
			map.insert("Apikey".to_string(), api_key);
			map.insert("Op".to_string(), "1".to_string());

			let client = reqwest::blocking::Client::new();
			let res = client.post("https://do.pishock.com/api/apioperate")
				.header(CONTENT_TYPE, "application/json")
				.json(&map)
				.send()
				.expect("Failed to get response")
				.text()
				.expect("Failed to get payload");
			ctx.callback_data("arma3_pishock", "Vibrate", Some(res));
		});
		
		// Returns success message with call context
		return format!("Vibrate command sent successfully,{:?}", call_context);
    }
	
    pub fn beep(ctx: Context, username: String, sharecode: String, api_key: String, duration: u32) -> String {
		
		// Gather Call Context
		let call_context = format!(
			"{:?},{:?},{:?},{:?}",
			ctx.caller(),
			ctx.source(),
			ctx.mission(),
			ctx.server()
		);
		
		// Sanity Checks, if you trigger these, you probably shouldn't be here!
		match duration {
			1..=15 => {}
			_ => {
				return format!("Duration out of range!,{:?}", call_context);
			}
		}
		
		// Spawns thread for the HTTPS Request, Prevents freezing the game while waiting response
		std::thread::spawn(move || {
			let mut map = HashMap::new();
			map.insert("Username".to_string(), username);
			map.insert("Name".to_string(), "A3_Pishock_V2.0.0".to_string());
			map.insert("Code".to_string(), sharecode);
			map.insert("Duration".to_string(), duration.to_string());
			map.insert("Apikey".to_string(), api_key);
			map.insert("Op".to_string(), "2".to_string());

			let client = reqwest::blocking::Client::new();
			let res = client.post("https://do.pishock.com/api/apioperate")
				.header(CONTENT_TYPE, "application/json")
				.json(&map)
				.send()
				.expect("Failed to get response")
				.text()
				.expect("Failed to get payload");
			ctx.callback_data("arma3_pishock", "Beep", Some(res));
		});
		
		// Returns success message with call context
		return format!("Beep command sent successfully,{:?}", call_context);
    }
}
