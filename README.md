# Java Swing Tutor

An interactive desktop application for learning Java Swing GUI development through hands-on, task-based programming
exercises.

## 📖 About

**Java Swing Tutor** is a comprehensive educational platform designed to teach Java Swing library through an
engaging, interactive learning experience. The application provides a structured curriculum with lessons, coding tasks,
real-time code compilation, and progress tracking.

### Key Features

- **📚 Structured Learning Path**: 50+ lessons covering Java Swing fundamentals to advanced topics
- **✍️ Interactive Code Editor**: Syntax-highlighted editor with intelligent code completion
- **✅ Task-Based Learning**: Step-by-step tasks with instant feedback and validation
- **🔍 Real-Time Code Execution**: Compile and preview your Swing applications instantly
- **📊 Progress Tracking**: Monitor your learning progress with completed task tracking
- **🌍 Multi-Language Support**: Available in English, Russian, Spanish, and Italian
- **📖 Reference Documentation**: Built-in documentation for each lesson
- **🔐 User Authentication**: Secure registration and login system
- **💡 Intelligent Validation**: Advanced code checking to ensure correct solutions

### Business Value

Java Swing Tutor serves as a comprehensive learning tool for:

- **Students** learning Java GUI development
- **Educators** teaching Swing programming concepts
- **Developers** looking to refresh or enhance their Swing skills
- **Organizations** providing structured training programs

The application combines theoretical knowledge with practical exercises, allowing learners to immediately see the
results of their code in a visual, interactive environment.

## 🏗️ Architecture

The project follows a multi-module Maven architecture:

- **`domain`**: Shared DTOs, request/response models, and domain entities used across modules
- **`flyway`**: Database migrations (SQL only); consumed by the service classpath and by the Flyway Docker image / K8s
  Job
- **`service`**: Spring Boot REST API backend providing:
    - User authentication and management
    - Lesson and task management
    - Code validation and checking services
    - Progress tracking
    - Documentation and reference materials
- **`desktop-client`**: Java Swing desktop application featuring:
    - Modern, dark-themed UI
    - Code editor with syntax highlighting
    - Task navigation and management
    - Real-time code compilation
    - User session management

## 🛠️ Technology Stack

- **Java 25**: Latest Java features and performance improvements
- **Spring Boot 4.0.1**: Modern Spring framework for backend services
- **PostgreSQL 17**: Robust relational database for data persistence
- **Flyway**: Database migration and versioning
- **Maven 3.9+**: Build automation and dependency management
- **Docker & Docker Compose**: Containerized deployment
- **Java Swing**: Desktop GUI framework

## 📋 Requirements

Before starting, ensure you have the following installed:

- **JDK 25** (Java Development Kit)
- **Maven 3.9+** (Build tool)
- **Docker & Docker Compose** (For database and backend service)
- **Git** (Version control)

## 🚀 Quick Start

### Step 1: Start Backend Service and Database

Start the PostgreSQL database and Spring Boot service using Docker Compose:

```bash
docker compose up --build
```

This command will:

- Start PostgreSQL database on port **5450** (mapped from container port 5432)
- Run Flyway database migrations automatically
- Build and start the Spring Boot REST API service on port **8400**

The backend service will be available at `http://localhost:8400`

**Note**: The first startup may take a few minutes as Docker builds the service image and runs all database migrations.

### Step 2: Build Desktop Client

In a new terminal, build the desktop client application:

```bash
mvn clean package -pl desktop-client -am
```

This produces a runnable JAR file:

- `desktop-client/target/desktop-client-<version>.jar`

### Step 3: Run Desktop Client

Launch the desktop application:

```bash
java -jar desktop-client/target/desktop-client-<version>.jar
```

The client automatically connects to the backend service at `http://localhost:8400`.

### First Steps in the Application

1. **Register a new account** or **sign in** with existing credentials
2. **Select a lesson** from the dropdown menu
3. **Choose a task** to work on
4. **Read the documentation** on the right panel for guidance
5. **Write your code** in the editor
6. **Click "Run Code"** to preview your Swing application
7. **Click "Check"** to validate your solution
8. **Track your progress** as tasks are marked as completed

## ⚙️ Configuration

### Environment Variables

#### Desktop Client

| Variable                          | Description                                     | Default                 |
|-----------------------------------|-------------------------------------------------|-------------------------|
| `JAVA_SWING_TUTOR_SERVICE_URL`    | Backend service URL                             | `http://localhost:8400` |
| `JAVA_SWING_TUTOR_USE_REMOTE`     | Use REST API for data access                    | `true`                  |
| `JAVA_SWING_TUTOR_USE_DB`         | Fallback to direct database access              | `false`                 |
| `JAVA_SWING_TUTOR_SMTP_USERNAME`  | SMTP username for email verification (optional) | -                       |
| `JAVA_SWING_TUTOR_SMTP_PASSWORD`  | SMTP password for email verification (optional) | -                       |

#### Backend Service

| Variable                             | Description                 | Default                                             |
|--------------------------------------|-----------------------------|-----------------------------------------------------|
| `JAVA_SWING_TUTOR_DATABASE_URL`      | PostgreSQL connection URL   | `jdbc:postgresql://localhost:5450/java_swing_tutor` |
| `JAVA_SWING_TUTOR_DATABASE_USER`     | Database username           | `java_swing_tutor`                                  |
| `JAVA_SWING_TUTOR_DATABASE_PASSWORD` | Database password           | `java_swing_tutor`                                  |
| `JAVA_SWING_TUTOR_SERVICE_PORT`      | Service port                | `8400`                                              |
| `SPRING_PROFILES_ACTIVE`             | Spring profile (dev/docker) | `dev`                                               |

### Docker Compose Configuration

The `docker-compose.yml` file configures:

- **PostgreSQL database** on port 5450
- **Flyway migrations** that run automatically
- **Spring Boot service** on port 8400

Database credentials (Docker environment):

- **Database**: `java_swing_tutor`
- **User**: `java_swing_tutor`
- **Password**: `java_swing_tutor`
- **Port**: `5450` (host) / `5432` (container)

## 🔧 Local Development

### Running Backend Service Locally

For development, you can run the service outside Docker:

```bash
# Start only the database and migrations
docker compose up db flyway

# In another terminal, run the service locally
cd service
mvn spring-boot:run
```

This allows for faster iteration during development with hot-reload capabilities.

### Running Desktop Client Locally

```bash
# Build the client
mvn clean package -pl desktop-client -am

# Run the client (connects to backend at http://localhost:8400)
java -jar desktop-client/target/desktop-client-<version>.jar
```

## 📁 Project Structure

```
java-swing-tutor/
├── domain/                    # Shared DTOs and request models
│   └── src/main/java/
│       └── com/posadskiy/javaswingtutor/domain/
│           ├── dto/          # Data Transfer Objects
│           ├── request/      # API request models
│           └── response/     # API response models
│
├── service/                   # Spring Boot REST API backend
│   └── src/main/java/
│       └── com/posadskiy/javaswingtutor/service/
│           ├── application/  # Application services
│           ├── domain/       # Domain entities, mappers, and checkers
│           ├── infrastructure/ # JPA repositories and external clients
│           └── web/          # REST controllers
│   └── src/main/resources/
│       └── application.yml   # Spring Boot configuration
│
├── flyway/                   # Database migrations (separate from service)
│   └── src/main/resources/db/migration/
│       ├── common/           # Schema and common data
│       ├── lesson/           # Base lesson data
│       ├── lesson_en/        # English translations
│       ├── lesson_ru/        # Russian translations
│       ├── lesson_es/        # Spanish translations
│       └── lesson_it/        # Italian translations
│
├── desktop-client/            # Swing desktop UI client
│   └── src/main/java/
│       └── com/posadskiy/javaswingtutor/
│           ├── api/          # REST API clients
│           ├── application/  # Application services
│           ├── domain/       # Domain models
│           ├── infrastructure/ # Configuration, storage, compiler
│           └── presentation/ # UI components, controllers, views
│   └── src/main/resources/
│       └── i18n/            # Internationalization files
│
├── deployment/                # Shared cluster config and scripts (see deployment/README.md)
├── flyway/                    # Migrations module + Flyway image and K8s Job (flyway/deployment/)
├── website/                   # Next.js website (and website/deployment/ for deploy)
├── docker-compose.yml         # Docker services configuration
├── service/Dockerfile         # Service container image (build context: repo root)
└── pom.xml                   # Root Maven POM
```

## 🌐 API Endpoints

The backend service exposes REST APIs at `http://localhost:8400/api`:

### Authentication
- `POST /api/auth/login` - User authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/refresh` - Refresh authentication token

### Users
- `GET /api/users` - List users
- `GET /api/users/{id}` - Get user details

### Learning Content
- `GET /api/lessons?categoryId={id}` - Get lessons by category
- `GET /api/tasks?lessonId={id}` - Get tasks by lesson
- `GET /api/keywords` - Get programming keywords reference
- `GET /api/shorthands` - Get code shorthands reference
- `GET /api/documentation/{id}` - Get lesson documentation
- `GET /api/errors/{id}` - Get error details and explanations

### Progress Tracking

- `GET /api/completed-tasks?userId={id}` - Get user's completed tasks
- `POST /api/completed-tasks` - Mark task as completed

### Code Validation

- `POST /api/code/check` - Validate user code against task requirements

## 🗄️ Database

The application uses PostgreSQL with Flyway for database migrations. All migrations are in the **`flyway`** module:

- `flyway/src/main/resources/db/migration/`

The database schema includes:

- **Users**: User accounts and authentication
- **Lessons**: Learning content organized by categories
- **Tasks**: Individual programming exercises
- **Completed Tasks**: User progress tracking
- **Documentation**: Reference materials for lessons
- **Translations**: Multi-language support for content

## 🏗️ Building the Project

### Build All Modules

```bash
# Build everything
mvn clean package

# Build specific module
mvn clean package -pl service
mvn clean package -pl desktop-client
```

### Build with Tests

```bash
mvn clean package -DskipTests=false
```

## 📝 Development Notes

- The desktop client connects to the backend via REST API by default
- Email verification for registration is optional (requires SMTP credentials)
- The backend service runs in Docker; the desktop client runs on your host machine
- All modules use Java 25 and Spring Boot 4.0.1
- Code formatting follows Google Java Format (enforced by Spotless)
- The application supports session restoration on restart

## 🐳 Docker Deployment

The project includes Docker support for easy deployment:

```bash
# Start all services
docker compose up --build

# Start in detached mode
docker compose up -d --build

# Stop services
docker compose down

# View logs
docker compose logs -f service
```

## ☸️ Kubernetes deployment

**Flow:** deploy common cluster config from the **parent** `deployment/`, then **build images and deploy from each
module** (website, flyway, service). Flyway and service are separate: deploy Flyway first (migrations), then the backend
service. There is no central “build and push all”; each module builds and pushes its own image, then deploys. See *
*[deployment/README.md](deployment/README.md)** for layout and prerequisites.


```bash
# 1. Deploy common cluster config from parent (namespace, secret, ConfigMap, Secrets, Traefik IngressRoute + middleware)
./deployment/scripts/k3s/deploy-to-k3s.sh

# 2. Website (from website/)
cd website && ./deployment/scripts/build-and-push.sh <version> && ./deployment/scripts/deploy.sh <version>

# 3. Flyway migrations (from flyway/) — run before the backend service
cd flyway && ./deployment/scripts/build-and-push.sh <version> && ./deployment/scripts/deploy.sh <version>

# 4. Backend service (from service/)
cd service && ./deployment/scripts/build-and-push.sh <version> && ./deployment/scripts/deploy.sh <version>
```

## 📚 Learning Path

The application includes 50+ lessons covering:

1. **Basics**: Introduction to Swing, windows, and components
2. **Layouts**: Layout managers and component positioning
3. **Events**: Event handling and user interactions
4. **Components**: Buttons, text fields, menus, dialogs
5. **Advanced**: Custom components, graphics, and animations
6. **Best Practices**: Design patterns and Swing architecture

Each lesson contains multiple tasks with increasing difficulty, allowing learners to progress at their own pace.

## 🤝 Contributing

This is an educational project. Contributions, suggestions, and improvements are welcome!

## 📄 License

[Specify your license here]

---

**Happy Learning!** 🎓 Start your Java Swing journey today with Java Swing Tutor.
