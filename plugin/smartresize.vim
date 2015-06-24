
func! s:smartResizeJ() 
  let curwindow = winnr() 

  " can still move down?
  wincmd j 
  if winnr() == curwindow 
    wincmd k 
  else 
    wincmd p 
  endif 
  resize +1 

  " restore current window 
  exec curwindow.'wincmd w' 
endfun 

func! s:smartResizeK() 
  let curwindow = winnr() 

  " can still move up?
  wincmd k 
  if winnr() == curwindow 
    wincmd j 
  else 
    wincmd p 
  endif 
  resize +1 

  " restore current window 
  exec curwindow.'wincmd w' 
endfun 

func! s:smartResizeH() 
  let curwindow = winnr() 

  " can still move left?
  wincmd h 
  if winnr() == curwindow 
    wincmd l 
  else 
    wincmd p 
  endif 
  vertical resize +1 

  " restore current window 
  exec curwindow.'wincmd w' 
endfun 

func! s:smartResizeL() 
  let curwindow = winnr() 

  " can still move right?
  wincmd l 
  if winnr() == curwindow 
    wincmd h 
  else 
    wincmd p 
  endif 
  vertical resize +1 

  " restore current window 
  exec curwindow.'wincmd w' 
endfun 

command! SmartResizeH call s:smartResizeH()
command! SmartResizeL call s:smartResizeL()
command! SmartResizeK call s:smartResizeK()
command! SmartResizeJ call s:smartResizeJ()
