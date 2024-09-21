use zed_extension_api::{self as zed, Result};

struct UnisonExtension;

impl zed::Extension for UnisonExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _config: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree
            .which("nc")
            .ok_or_else(|| "nc not found, please install nc and make sure it's in your PATH".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec!["localhost".to_string(), "5757".to_string()],
            env: Default::default(),
        })
    }
}

zed::register_extension!(UnisonExtension);
