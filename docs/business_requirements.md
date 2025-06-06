# Описание проекта "Анализ просроченных кредитов"

## Цель проекта
Разработать систему анализа просроченных кредитов на основе синтетических данных, включая:
- построение витрины данных (BI)
- расчет ключевых метрик (доля просрочек)
- выявление потенциальных факторов риска (по демографии)
- подготовку архитектурного решения с возможностью масштабирования

---

## Задачи проекта
1. Сгенерировать "сырой" JSON-файл с кредитами и клиентами.
2. Реализовать ETL-процесс: загрузка, очистка, расчет просрочек.
3. Проанализировать зависимости просрочек от признаков клиента.
4. Построить BI-отчёт: доля просрочек по месяцам, фильтры по сумме.
5. Разработать рекомендации по уведомлению клиентов и управлению рисками.
6. Документировать архитектуру, тестовые кейсы, бизнес-логику.

---

## Бизнес-требования

- Использовать текущую дату (или задаваемую вручную) для расчета просрочек.
- Возможность фильтрации клиентов по сумме кредита:
  - до 50 тыс.
  - 50–100 тыс.
  - 100–500 тыс.
  - более 500 тыс.
- Отчёт в BI должен быть визуализирован (Jupyter/Power BI/Tableau — по выбору).
- Исходные данные — в формате JSON, структура расширяема.

---

## Функциональные требования

- Обработка JSON-файлов с данными клиентов и кредитов.
- Расчёт поля "просрочен/не просрочен" по сроку кредита.
- Загрузка обработанных данных в таблицы DWH.
- Подсчёт % просрочек по времени (месяцам).
- BI-дэшборд с фильтрацией по сумме кредита.
- Автоматизированные тесты на корректность обработки.

---

## Нефункциональные требования

- Репозиторий оформлен с документацией, диаграммами, инструкцией по запуску.
- Возможность масштабирования (поддержка большого объёма JSON).
- Читаемый код и модульная архитектура.
- Повторяемость результата (фиксированная генерация данных по seed).
- Возможность задать дату анализа вручную (через аргументы или env).

---

## Ограничения

- Используем синтетические данные (не настоящие банковские).
- JSON формируется по заданной структуре (автором проекта).
- Нет подключения к реальному хранилищу или API (всё локально).

