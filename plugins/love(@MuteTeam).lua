function run(msg, matches)
if matches[1] == 'love' then
  local muteteam = matches[2]
  local url = "http://api.roonx.com/photo/pic5.php?text="..muteteam.."
  local ext = "love.webp"
  local cb_extra = {file_path=file}
  local receiver = get_receiver(msg)
  local file = download_to_file(url, "love.webp")
  send_document(receiver, file, rmtmp_cb, cb_extra)
end
   end
return {
  patterns = {
   "[!#/](love) (.*)",
  },
  run = run
}