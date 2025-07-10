{
  plugins.gitblame = {
    enable = true;
    settings = {
      message_when_not_committed = "Not committed yet";
      message_template = "<author> • <summary> • <date>";
      date_format = "%Y-%m-%d %H:%M";
      set_extmark_options.virt_text_pos = "eol_right_align";
    };
  };
}
