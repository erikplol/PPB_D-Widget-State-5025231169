# Widget State

Simple Flutter app that demonstrates basic layout widgets and local state updates using a counter button.

## App Structure

- Entry point: `lib/main.dart`
- Main screen: `lib/home.dart`

## Widgets Used In This Project

### Root And App-Level Widgets

- `MaterialApp`: Root Material Design app wrapper created in `main.dart`.
- `Home` (`StatelessWidget`): Main screen widget that composes all UI sections.
- `Scaffold`: Provides the basic page structure (app bar + body).
- `AppBar`: Top navigation/title bar.

### Layout Widgets

- `Column`: Stacks sections vertically in the page body.
- `Row`: Lays out category items and counter content horizontally.
- `Container`: Adds spacing, background color, and section-level styling.
- `SizedBox`: Adds fixed horizontal gaps between category items.

### Content Widgets

- `Text`: Displays titles, labels, and the counter value.
- `Image.asset`: Displays local image from `assets/image.png`.
- `Icon`: Shows category icons (`fastfood`, `landscape`, `people`).

### Interaction And State Widgets

- `ElevatedButton`: Counter increment button (`+`).
- `_CounterSection` (`StatefulWidget`): Owns mutable counter state.
- `_CounterSectionState` (`State<_CounterSection>`): Stores and updates `_counter`.
- `setState()`: Triggers rebuild when the counter value changes.

### Reusable Section Widgets

- `_ImageSection` (`StatelessWidget`): Image display block.
- `_QuestionSection` (`StatelessWidget`): Question text block.
- `_CategorySection` (`StatelessWidget`): Category row block.
- `_CategoryItem` (`StatelessWidget`): Reusable icon + label item used in categories.
