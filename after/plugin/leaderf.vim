" ============================================================================
" File:        leaderf.vim
" Description:
" Author:      Yggdroot <archofortune@gmail.com>
" Website:     https://github.com/Yggdroot
" Note:
" License:     Apache License, Version 2.0
" ============================================================================

command! -bar -nargs=0 LeaderfMarks call leaderf#Marks#startExpl(g:Lf_WindowPosition)

" In order to be listed by :LeaderfSelf
call g:LfRegisterSelf("LeaderfMarks", "navigate the marks")

" Definition of 'arguments' can be similar as
" https://github.com/Yggdroot/LeaderF/blob/master/autoload/leaderf/Any.vim#L85-L140
let s:extension = {
            \   "name": "marks",
            \   "help": "navigate the marks",
            \   "registerFunc": "leaderf#Marks#register",
            \   "arguments": [
            \   ]
            \ }
" In order that `Leaderf marks` is available
call g:LfRegisterPythonExtension(s:extension.name, s:extension)
