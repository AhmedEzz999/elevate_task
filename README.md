# Simple Store

"Simple Store" is a Flutter-based mobile application that demonstrates a clean and scalable architecture for fetching and displaying product data from a remote API. The app presents products in a grid view, showing key information like title, image, price, and user ratings.

## Features

-   **Product Listing:** Fetches a list of products from the [Fake Store API](https://fakestoreapi.com/).
-   **State Management:** Utilizes the BLoC pattern with `flutter_bloc` for robust and predictable state management.
-   **UI:** Displays products in a responsive `GridView`.
-   **Error Handling:** Gracefully handles API errors and displays informative messages to the user.
-   **Image Caching:** Uses `cached_network_image` to efficiently load and cache product images, improving performance and reducing network usage.
-   **Clean Architecture:** Implements a feature-driven architecture with a clear separation of concerns (Data, Presentation, Core).
-   **Dependency Injection:** Manages dependencies using the `get_it` service locator.

## Architecture

The project follows a clean, feature-first architecture, separating the application into three main layers:

-   **`core`**: Contains shared code used across multiple features, including the API service, dependency injection setup, error handling logic, and custom widgets.
-   **`features`**: Contains the individual features of the application. Currently, it includes the `home` feature.
    -   **`data`**: Responsible for the data layer, including:
        -   **`models`**: Data models like `ProductModel` and `Rating`.
        -   **`repo`**: The repository pattern implementation (`HomeRepoImpl`) that abstracts the data source.
    -   **`presentation`**: Manages the UI and state, including:
        -   **`views`**: The main screens of the feature (e.g., `HomeView`).
        -   **`view_model`**: State management logic using Cubits (`GetAllProductsCubit`).
        -   **`widgets`**: Reusable UI components for the feature's views.

## Project Structure (`lib` directory)

```
lib/
├── core/
│   ├── errors/
│   │   └── service_failures.dart
│   ├── utils/
│   │   ├── api_service.dart
│   │   ├── app_colors.dart
│   │   └── dependency_injection.dart
│   └── widgets/
│       └── custom_error_widget.dart
├── features/
│   └── home/
│       ├── data/
│       │   ├── models/
│       │   └── repo/
│       └── presentation/
│           ├── view_model/
│           ├── views/
│           └── widgets/
└── main.dart
```

## Key Libraries Used

-   **`flutter_bloc`**: State management
-   **`dio`**: HTTP client for API requests
-   **`get_it`**: Service locator for dependency injection
-   **`dartz`**: Functional programming for error/success handling (Either type)
-   **`cached_network_image`**: Loading and caching network images
-   **`equatable`**: Simplifying value equality

## Getting Started

To run this project locally, follow these steps:

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/AhmedEzz999/elevate_task.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd elevate_task
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run