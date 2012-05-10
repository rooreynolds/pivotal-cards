#!/bin/sh

git checkout master bookmarklet pivotal-cards.css pivotal-cards.js

(
cat <<-!
<html>
<head><title>Pivotal Cards</title></head>
<body>
<h1>Pivotal Cards</h1>
<p>Printable index cards for your <a href="https://www.pivotaltracker.com">Pivotal Tracker</a> project.</p>
!
echo "<p>Drag the <a href='"$(cat bookmarklet)"'>pivotal-cards</a> bookmarklet to your bookmarks bar.</p>"

cat <<-!
<p>Forked from Paul Downey's <a id="github" href="https://github.com/psd/pivotal-cards">project on github</a>. See <a href="http://psd.github.com/pivotal-cards">his project page</a> for more help.</p>
</body>
</html>
!
) > index.html
