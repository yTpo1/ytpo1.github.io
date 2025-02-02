---
title: CSS
---

# CSS

## Using CSS custom properties (variables)
https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties

the :root pseudo-class, can be referenced globally:
```
:root {
  --main-bg-color: brown;
}
```

Referencing custom properties with var()

```
details {
  background-color: var(--main-bg-color);
}
```

## apply rule only when inside an element
CSS descendant selector (a space) between the parent element and the descendant element

```
article p {
    /* CSS rules */
}
```