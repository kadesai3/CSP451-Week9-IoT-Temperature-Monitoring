-- Store all telemetry data
SELECT
    EventEnqueuedUtcTime AS eventTime,
    temperature,
    humidity
INTO
    [kadesai3-blob-output]
FROM
    [kadesai3-iothub-2046979];

-- Store alerts if temperature exceeds 40°C
SELECT
    EventEnqueuedUtcTime AS alertTime,
    temperature,
    humidity,
    'Temperature exceeded 40C' AS alertMessage
INTO
    [kadesai3-blob-alerts]
FROM
    [kadesai3-iothub-2046979]
WHERE
    temperature > 40;
