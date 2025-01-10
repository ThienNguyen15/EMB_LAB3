/*
 * data_update.c
 *
 *  Created on: Jan 10, 2025
 *      Author: thien
 */

#include "data_update.h"

uint8_t adc_count = 0;

void ADC_Update()
{
    adc_count = (adc_count + 1) % 200;
	test_Esp();
	lightProcess();

    if (adc_count == 0)
    {
        sensor_Read();

        // Light
        lcd_ShowStr(10, 140, "Light:", RED, BLACK, 16, 0);
        lcd_ShowIntNum(130, 140, sensor_GetLight(), 4, RED, BLACK, 16);
        int lightVal = sensor_GetLight();
        char lightStr[30];
        snprintf(lightStr, sizeof(lightStr), "!LIGHT:%d#\n", lightVal);
        uart_EspSendBytes(lightStr, strlen(lightStr));

        // Voltage
        lcd_ShowStr(10, 100, "Voltage:", RED, BLACK, 16, 0);
        lcd_ShowFloatNum(130, 100, sensor_GetVoltage(), 4, RED, BLACK, 16);
        int voltageInt = (int)(sensor_GetVoltage() * 100); // (2 decimal places)
        char voltageStr[30];
        snprintf(voltageStr, sizeof(voltageStr), "!VOLTAGE:%d.%02d#\n", voltageInt / 100, voltageInt % 100);
        uart_EspSendBytes(voltageStr, strlen(voltageStr));

        // Current
        lcd_ShowStr(10, 120, "Current:", RED, BLACK, 16, 0);
        lcd_ShowFloatNum(130, 120, sensor_GetCurrent(), 4, RED, BLACK, 16);
        int currentInt = (int)(sensor_GetCurrent() * 100); // (2 decimal places)
        char currentStr[30];
        snprintf(currentStr, sizeof(currentStr), "!CURRENT:%d.%02d#\n", currentInt / 100, currentInt % 100);
        uart_EspSendBytes(currentStr, strlen(currentStr));

        // Temperature
        lcd_ShowStr(10, 180, "Temperature:", RED, BLACK, 16, 0);
        lcd_ShowFloatNum(130, 180, sensor_GetTemperature(), 4, RED, BLACK, 16);
        int tempInt = (int)(sensor_GetTemperature() * 100); // (2 decimal places)
        char tempStr[30];
        snprintf(tempStr, sizeof(tempStr), "!TEMPERATURE:%d.%02d#\n", tempInt / 100, tempInt % 100);
        uart_EspSendBytes(tempStr, strlen(tempStr));
    }
}
