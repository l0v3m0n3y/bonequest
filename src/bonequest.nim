import asyncdispatch, httpclient, json, strutils
const api = "https://www.bonequest.com/api/v2"
var headers = newHttpHeaders({
    "Connection": "keep-alive",
    "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
    "Host": "www.bonequest.com",
    "accept": "application/json"
})

proc get_episode*(episode:int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/episode/" & $episode)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

