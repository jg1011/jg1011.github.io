# Jacob Green's Personal Site

I'd advise against reading this code, along with the commit history, if you value your sanity. Some vibecoding gone wrong followed by ill-informed human fixes, leading up to this unholy amalgamation of ideas. I know how to maintain it, and I vaguely know what's going on, so until that changes... 

## Scripts 

Render markdown ready for Jekyll via double escaping certain chars (e.g. $\{\}$) via 

```
RenderForJekyll.ps1 -InputPath "[RELATIVE_FILE_LOCATION]" -OutputDir "_includes\rendered"
```

Make sure `articles/article_name/index.md` header then uses `{% include rendered/article_name_escaped.md %}`. for apt rendering. See e.g. `article/swiss_subsets` to get the idea. `index.md` ref must point to `articles/article_name`.   

## Cards

Just make everything a project card, they work. 
