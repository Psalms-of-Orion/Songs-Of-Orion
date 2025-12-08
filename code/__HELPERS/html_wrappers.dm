#define HTML_DOC_SKELETON(head, body) \
"<!DOCTYPE html><html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'><meta http-equiv='X-UA-Compatible' content='IE=edge'>[head]</head><body>[body]</body></html>"

#define HTML_TITLE_SKELETON(title, body) HTML_DOC_SKELETON("<title>[title]</title>", body)

#define HTML_BODY_SKELETON(body) HTML_DOC_SKELETON("", body)
