import streamlit as st

def calculate_loss_of_water(initial_water_level, final_water_level, evaporation_rate, leakage_rate):
  """Calculates the loss of water in a tank.

  Args:
    initial_water_level: The initial water level in the tank, in liters.
    final_water_level: The final water level in the tank, in liters.
    evaporation_rate: The evaporation rate per day, in liters per day.
    leakage_rate: The leakage rate per day, in liters per day.

  Returns:
    The loss of water in the tank, in liters.
  """

  loss_of_water = initial_water_level - final_water_level
  loss_of_water += evaporation_rate * (days_since_last_reading)
  loss_of_water += leakage_rate * (days_since_last_reading)

  return loss_of_water

st.title("Water Loss Calculation App")

initial_water_level = st.number_input("Initial water level (liters)", 0, 10000)
final_water_level = st.number_input("Final water level (liters)", 0, 10000)
evaporation_rate = st.number_input("Evaporation rate (liters/day)", 0, 10)
leakage_rate = st.number_input("Leakage rate (liters/day)", 0, 10)

days_since_last_reading = st.number_input("Days since last reading", 1, 30)

loss_of_water = calculate_loss_of_water(
    initial_water_level, final_water_level, evaporation_rate, leakage_rate
)

st.write("Loss of water:", loss_of_water, "liters")
