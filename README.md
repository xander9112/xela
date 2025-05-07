# xela eXpandable Engine for Lightweight Apps

Flutter App Template

### Initialize mason

```bash
dart pub global activate mason_cli
```

```bash
mason init
```

### Add empty mason project

```bash
mason add xela_project --git-url https://github.com/xander9112/xela --git-path xela_project
```

### Add Xela Module

```bash
mason add xela_module --git-url https://github.com/xander9112/xela --git-path xela_module
```

### Add Xela Feature

```bash
mason add xela_feature --git-url https://github.com/xander9112/xela --git-path xela_feature
```

### Создадим дефолтную структуру

```bash
mason make xela_project --on-conflict overwrite
```
