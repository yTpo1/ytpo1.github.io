# Date and Time Standards

* **ISO 8601**:
    * Format: `YYYY-MM-DDTHH:MM:SSZ`
    * Example: `2023-10-05T14:48:00Z`
    * This is an international standard for date and time representations. It is widely used in APIs and data interchange formats.
* **TFC 2822**:
    * Format: `Day, DD Mon YYYY HH:MM:SS +0000`
    * Example: `Tue, 05 Oct 2023 14:48:00 +0000`
    * Commonly using in email headers.
* **Unix Timestamp**:
    * Format: Seconds since January 1, 1970 (UTC)
    * Example: `1696512480`
    * Used in many programming languages and systems to represent a point in time
* **RFC 3339**:
    * Format: `YYYY-MM-DDTHH:MM:SSZ` or `YYYY-MM-DDTHH:MM:SS+HH:MM`
    * Example: `2023-10-05T14:48:00Z` or `2023-10-05T14:48:00+00:00`
    * A profile of ISO 8601 used in internet protocols

## Difference between ISO 8601 and UTC

ISO 8601 is a format for representing date and time, which can include UTC times, while UTC is a time standard that can be represented using the ISO 8601 format

* **ISO 8601**: It ensures a consistent and unambiguous representation of date and time across different systems and platforms.
* **UTC (Coordinated Universal Time)**: Is the primary time standard by which the world regulates clocks and time. It is effectively the same as Greenwich Mean Time (GMT).
    * **Format**: UTC itself is not a format but a time standard. It is often representd in ISO 8601 format with a `Z` suffix to indicate zero offset from UTC.
    * **Purpose**: It provides a uniform time reference that is not affected by time zones or daylight saving time.

Key Differences:
* **Usage**: ISO 8601 can represent both UTC and local times with offsets, whereas UTC specifically refers to the time standard without any offsets. 