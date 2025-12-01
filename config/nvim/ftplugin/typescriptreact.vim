" enable gf cmd  for `import "@/app/hoge/fuga"` in nextjs
setlocal includeexpr=substitute(v:fname,'/','','')

" enable gf cmd open "hoge/[hogeId]/page.tsx"
setlocal isfname+=[,]

" debug
nnoremap <buffer> <space>dl ^"aDaconsole.log('<c-r>a', <c-r>a) // debug
nnoremap <buffer> <space>dp yypkIconsole.log('<esc>A'); // debug<esc>jIconsole.log(<esc>A); // debug<esc>

" map
inoremap <buffer> ap^ push
inoremap <buffer> cns^ const 
inoremap <buffer> cn^ className="  " <left><left><left>
inoremap <buffer> ac^ <space>+ "  "<left><left>
nnoremap <buffer> <space>sc :SnakeToCamel<cr>
" `ss` means set state
nnoremap <buffer> <space>ss yawea, <esc>pb~hiset<esc>

" comment
"inoremap <buffer> # //
nnoremap <buffer> <space>co I//<esc>
nnoremap <buffer> <space>ci ^2x
nnoremap <buffer> <space>ca A //
nnoremap <buffer> <space>cb o/*<esc>
nnoremap <buffer> <space>ce O// */<esc>
inoremap <buffer> @@ //
inoremap <buffer> @[ {/*  */}<left><left><left><left>

" short
inoremap <buffer> .^ <c-g>u<esc>ciw<<c-r>"><cr></<c-r>">
inoremap <buffer> ,^ <c-g>u<esc>ciw<<c-r>" />
inoremap <buffer> $$ ${}<left>

inoremap <buffer> con^ continue
inoremap <buffer> t^ true
inoremap <buffer> f^ false
inoremap <buffer> n^ null
inoremap <buffer> u^ undefined
inoremap <buffer> e^ export<space>
inoremap <buffer> ex^ export<space>
inoremap <buffer> d^ default<space>
inoremap <buffer> de^ default<space>
inoremap <buffer> fu^ function<space>
inoremap <buffer> as^ async<space>
inoremap <buffer> aw^ await<space>

noremap <buffer> <space>; A;<esc>
noremap <buffer> <space>b A<br /><esc>

" if
inoremap <buffer> if^ <esc>Iif (<esc>==A) {<cr>}<esc>kf(a

" loop
inoremap <buffer> fe^ <esc>Ifor (let $ of <esc>A) {<cr>}<esc>k^f$s
inoremap <buffer> fo^ <esc>Ifor (let i = 0; i < <esc>A.length; i++) {<cr>}<esc>k^f$s
inoremap <buffer> fi^ <esc>Ifor (const [key, value] of Object.entries(<esc>A)) {<cr>}<esc>k^f$s
inoremap <buffer> fk^ <esc>Ifor (const key of Object.keys(<esc>A)) {<cr>}<esc>k^f$s
inoremap <buffer> fv^ <esc>Ifor (const value of Object.values(<esc>A)) {<cr>}<esc>k^f$s

" move
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = "function "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = "function "<cr>n:let @/ = @s \| noh<cr>t(
nnoremap <buffer> [[ f{
nnoremap <buffer> ]] f}


" macro
nnoremap <buffer> <space>d^ ^f(bd0f(%C) {<cr>}<esc>k==Ifunction <esc>o

" util
cnoremap <buffer> ch^ tabe ~/cheetsheet/react/mytsxutil/

" jsx
inoremap <buffer> ma^ <esc>I{<esc>A.map((one, index) => (<cr><div key={} ><cr></div><cr>))}<esc>kkk^f(fo3==

