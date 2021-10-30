/*
 * Copyright (c) 2021 Airbyte, Inc., all rights reserved.
 */

package io.airbyte.integrations.debezium.internals;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import io.debezium.spi.converter.RelationalColumn;
import java.sql.Timestamp;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class DebeziumConverterUtilsTest {

  @Test
  public void convertDefaultValueTest() {

    RelationalColumn relationalColumn = mock(RelationalColumn.class);

    when(relationalColumn.isOptional()).thenReturn(true);
    Object actualColumnDefaultValue = DebeziumConverterUtils.convertDefaultValue(relationalColumn);
    Assertions.assertNull(actualColumnDefaultValue, "Default value for optional relational column should be null");

    when(relationalColumn.isOptional()).thenReturn(false);
    when(relationalColumn.hasDefaultValue()).thenReturn(false);
    actualColumnDefaultValue = DebeziumConverterUtils.convertDefaultValue(relationalColumn);
    Assertions.assertNull(actualColumnDefaultValue);

    when(relationalColumn.isOptional()).thenReturn(false);
    when(relationalColumn.hasDefaultValue()).thenReturn(true);
    String expectedColumnDefaultValue = "default value";
    when(relationalColumn.defaultValue()).thenReturn(expectedColumnDefaultValue);
    actualColumnDefaultValue = DebeziumConverterUtils.convertDefaultValue(relationalColumn);
    Assertions.assertEquals(actualColumnDefaultValue, expectedColumnDefaultValue);
  }

  @Test
  public void convertLocalDate() {
    LocalDate localDate = LocalDate.of(2021, 1, 1);

    String actual = DebeziumConverterUtils.convertDate(localDate);
    Assertions.assertEquals("2021-01-01T00:00:00Z", actual);
  }

  @Test
  public void convertTLocalTime() {
    LocalTime localTime = LocalTime.of(8, 1, 1);
    String actual = DebeziumConverterUtils.convertDate(localTime);
    Assertions.assertEquals("08:01:01", actual);
  }

  @Test
  public void convertLocalDateTime() {
    LocalDateTime localDateTime = LocalDateTime.of(2021, 1, 1, 8, 1, 1);

    String actual = DebeziumConverterUtils.convertDate(localDateTime);
    Assertions.assertEquals("2021-01-01T08:01:01Z", actual);
  }

  @Test
  public void convertDuration() {
    Duration duration = Duration.ofHours(100_000);

    String actual = DebeziumConverterUtils.convertDate(duration);
    Assertions.assertEquals("1981-05-29T16:00:00Z", actual);
  }

  @Test
  public void convertTimestamp() {
    LocalDateTime localDateTime = LocalDateTime.of(2021, 1, 1, 8, 1, 1);
    Timestamp timestamp = Timestamp.valueOf(localDateTime);

    String actual = DebeziumConverterUtils.convertDate(timestamp);
    Assertions.assertEquals("2021-01-01T08:01:01Z", actual);
  }

  @Test
  public void convertNumber() {
    Number number = 100_000;

    String actual = DebeziumConverterUtils.convertDate(number);
    Assertions.assertEquals("1970-01-01T00:01:40Z", actual);
  }

  @Test
  public void convertStringDateFormat() {
    String stringValue = "2021-01-01T00:00:00Z";

    String actual = DebeziumConverterUtils.convertDate(stringValue);
    Assertions.assertEquals("2021-01-01T00:00:00Z", actual);
  }

}
