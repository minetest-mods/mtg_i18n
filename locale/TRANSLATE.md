# TRANSLATES

To generate file '**locale/template.pot**', did use terminal command:

````xgettext -n *.lua -L Lua --force-po --keyword=S --from-code=UTF-8 -o locale/template.pot````

To translate '**locale/<your_locale>.po**' to your language use app poedit.:

````sudo apt-get install poedit````

* Locales used: ca;cs;da;de;dv;eo;es;et;fr;hu;id;it;ja;jbo;kn;lt;ms;nb;nl;pl;pt;pt_BR;ro;ru;sl;sr_Cyrl;sv;sw;tr;uk

* Translate Sample: "locale/pt.po" to portuguese language.

* To enable the translate to portuguese language, write "language = pt" in file "minetest.conf". Or write the command "```/set -n language pt```" in game chat, and run again the minetest game.

> See more: 
* https://forum.minetest.net/viewtopic.php?f=47&t=21974
* https://github.com/minetest/minetest/issues/8158
