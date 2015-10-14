# Objective

When a large team is working using React, they start accumulating a big library of components. Some components are business logic components, very specific to the UX of the current feature. Other components are more foundational in nature and are just UX elements that can be more easily reused across the codebase. In order to maximize code reuse it would be ideal to maintain a directory of all the components used inside a codebase along with tracking where each component is used so that before starting work on a new component a developer can easily check in and see if something relevant exists that can be reused. It would also be good to see if redundant components exist in the codebase that could be consolidated.

One ideal way this could be done is to have an up-to-date component hierarchy tree that shows each parent component along with all its child components in a way that is easily navigable.

# Solution

Develop a simple tool in ruby that can be take as input a directory which contains React Components and produce as output an easy to navigate component hierarchy tree. Your tool should:

1. Parse all the code files and identify which ones have React components
2. Go through the React code and see where components are being used inside another component
3. Maintain a list of standard html tags that are excluded from the comparison
4. Produce as output a tree representing the component hierarchy. For starters this can be a simple text file. But if you get time you can be more creative and turn this into something more navigable

