---
title: CSS
---

# CSS

## Properties

### `box-sizing`
`box-sizing` defines hwo the width and height of an element are calculated

There are two main values for `box-sizing`: `border-box` and `content-box`.
1. `box-sizing: content-box;` (default):
    * The width and height properties include only the content. Padding, border and margin are not included in the width and height.

Example:
```css
.content-box {
    width: 200px;
    padding: 20px;
    border: 10px solid black;
    box-sizing: content-box;
}
```
In this example, the total width of the element will be 200px (content) + 40px (padding) + 20px (border) = 260px.

2. `box-sizing: border-box;`
    * The width snf height properties include the content, padding and border, but not the margin.
    * This makes it easier to manage the size of elements, as the total width and height are consistent.

With the above CSS example, the total width of the element will be exactly 200px, as the padding and border are included within the specified width;

Example:
<div>
    <div class="css-lesson_content-box">Content box</div>
    <div class="css-lesson_border-box">Border box</div>
</div>

In this example, the `.content-box` element will have a total width grater than 200px due to the padding and border, while the `.border-box` element will have a total width of exactly 200px, including the padding and border.

What are some common use cases for using `box-sizing: border-box;` in web design?

Using `box-sizing: border-box;` in web design us quite common due to its practical benefits in managing element dimensions. Here are some common use cases:
1. **Consistent Layouts**:
    * When you set `box-sizing: border-box;`, the padding and border are included in the element's total width and height. THis makes it easier to create consistent layouts, as the total size of elements remains predictable.
2. **Responsive Design**:
    * In responsive design, managing the dimensions of elements across different screen sizes is crucial. `border-box` helps ensure that the elements resize as expected without unexpected overflow or layout shifts dues to padding and borders.
3. **Grid Systems**:
    * When building grid systems, using `border-box` ensures that columns and rows align correctly without needing to account for padding and borders separately. This simplifies the math involved in creating fluid grids.
4. **Form Elements**:
    * Form elements like input fields, buttons, and text areas often need precise sizing to fit within their containers. Using `border-box` ensures that these elements maintain their intended size, regardless of padding and border.
5. **Global Reset**:
    * Many developers use a global CSS reset or normalize stylesheet to set `box-sizing: border-box;` for all elements. This creates a consistent box model across the entire application, reducing the likelihood of layout issues.

Example of a global reset using `box-sizing: border-box;`:
```css
/* Apply border-box to all elements */
*, 
*::before,
*::after {
    box-sizing: border-box;
}
```

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