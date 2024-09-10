{
  autoGroups = {
    Autorefresh = {
      clear = true;
    };
  };

  autoCmd = [
    {
      group = "Autorefresh";
      event = ["FocusGained" "BufEnter"];
      command = "checktime";
      desc = "Reload file on focus";
    }
  ];
}
