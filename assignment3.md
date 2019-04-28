---
layout: jumbo
title: Assignment 3
intro: Assignment 3
lead: You can find the report to my third assignment for WPUB
---

<hr />

<div class="row">
	<div class="col-md-12 text-center">
		<a class="btn btn-primary" href="/assets/Z3_xvasko.zip">Download</a>
	</div>
</div>

<hr />

Transformácie je možné spustiť aj na Windowse aj linuxe. Je potrebné iba definovať umiestnenia potrebných programov(Saxon, FOP). Tieto programy sú voľne dostupné, je treba iba dodržať minimálne verzie 9 pre saxon a 2.1 pre FOP.

<hr />
Na validovanie xml dokumentu (base.xml) bol použitý RelaxNG, definícia sa nachádza v zložke schemas, ktorá obsahuje dva súbory RelaxNG jeden je napísany pomocou kompaktnej syntaxe a druhý má klasickú xml syntax. Súbor s klasickou syntaxou je potrebný pre validátor xmllint. Písaná bola len verzia s kompaktnou syntaxou.

<hr />
Výstupy transformácií sa nachádzajú v zložke outputs, 13 xhtml súborov a jedno pdf. Súbor xml.fo, ktorý sa generuje počas transformácie je následne aj vymazaný, na linuxovej verzii.

<hr />

Transformácie je možné nájsť v zložke tranforms, najzaujímavejšie časti tvoria spracovanie zoznamov, ktoré je riešené v prípade xhtml rekurzívne, takže je možné teoreticky definovať nekonečne veľa pod zoznamov v prípade pdf súbora je možné nefinovať 2 úrovne.

Parametrizácia šablón bola použitá v prípade obrázkov. Tým pádom, že nestačí rekurentne použiť tú istú šablónu ale treba zmeniť aj rozmer daného obrázka.

<hr />

Všetky obrýzky sa nachádzajú v assets zložke.
