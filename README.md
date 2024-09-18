# GetX Project Architecture

## Overview

This document provides an overview of the architecture used in our Flutter project utilizing the GetX package. The project is organized into several key directories, each with a specific role in maintaining clean and scalable code.

## Project Structure

### `lib/`

The `lib` directory contains all the source code for the Flutter application. Here's a breakdown of its structure:

- **`main.dart`**: The entry point of the application. It initializes the app and sets up the necessary configurations.

### `lib/app/`

The `app` directory is the root of our application structure and contains the core logic, data handling, and presentation layers.

#### **`core/`**

This directory includes fundamental configurations and constants used throughout the application.

- **`config/`**
  - **`app_constants.dart`**: Contains application-wide constants.
  - **`app_colors.dart`**: Defines color schemes used in the app.
  - **`app_text_styles.dart`**: Specifies text styles and typography for the app.

#### **`data/`**

The `data` directory handles data management, including repositories and network-related operations.

- **`repositories/`**: Contains repository classes that manage data retrieval and storage.
- **`providers/`**
  - **`network/`**
    - **`api_provider.dart`**: Manages network requests and API interactions. It is responsible for fetching data from remote sources.

#### **`domain/`**

The `domain` layer contains business logic and entities.

- **`entities/`**: Defines data models or entities used in the application.
- **`repositories/`**: Abstracts data access methods used by the use cases.
- **`usecases/`**: Contains business logic or use cases that interact with repositories and entities to perform specific operations.

#### **`presentation/`**

This directory is responsible for the UI and user interaction components.

- **`controllers/`**: Contains GetX controllers that manage the state and business logic for the views.
- **`pages/`**: Defines the different pages or screens of the application.
- **`views/`**: Includes UI components and widgets that are used within the pages.
- **`app.dart`**: Sets up the main structure of the app, including navigation and initial routing.

## Summary

This architecture is designed to separate concerns and maintain a clean, manageable codebase. By adhering to this structure, we ensure that our code is modular, testable, and scalable.

For more information on how to use specific parts of the architecture or to contribute to the project, please refer to the corresponding directories and their documentation.

