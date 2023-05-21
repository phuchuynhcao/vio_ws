#ifndef SLIDERDRIVER_H
#define SLIDERDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
#include <string>
#include <devices/SliderSetting.h>
#include <devices/SliderMsg.h>

namespace slider_ns
{

typedef enum {
  constant = 0,
  sine = 1,
  triangle = 2,
  square = 3,
  custom = 4
} waveform_t;

typedef enum {
  command = 0,
  auto_frequency = 1,
  external_interrupt = 2
} triggermode_t;

typedef enum {
  CMD_OK = 0,
  CMD_ERROR = 1,
  CMD_INVALID = 2,
  CMD_NOSUPPORT = 3,
  CMD_NA = -1
} cmdstate_t;

typedef enum {
  PID = 0,
  STR = 1
} motioncontrol_t;

typedef enum
{
  Port1 = 1,
  Port2 = 2
} deviceport_t;

class SliderDriver {
public:
  SliderDriver(ros::NodeHandle in_nh, std::string portname);
  ~SliderDriver();

  void run();
  void convert_textfile_to_bagfile();

private:
  ros::NodeHandle m_nh;
  std::string m_portname;
  serial::Serial m_serial;
  triggermode_t m_triggermode;
  deviceport_t m_deviceport;
  devices::SliderSetting m_slidersetting;
  devices::SliderMsg m_slider_msg;

  /** Subcribe callback of SliderSetting 
  */
  void slider_setting_callback(const devices::SliderSetting::ConstPtr &newsetting);

  /** Set moving wave of the slider
   * 
   * \param waveform Wave form
   * \param frequency Wave frequency [Hz]
   * \param amplitude Wave amplitude peak-peak [mm]
   * \param bias Wave lowest value [mm]
   * 
   * \return true if wave setting is success
   */ 
  bool setWave(waveform_t waveform, double frequency, double amplitude, double bias);
  
  /** Set trigger option of the slider
   * 
   * \param devport port number of device that will return position data
   * \param trigmode method of trigger to get position data
   * \param trigfrequency frequency of auto triggering [Hz] (only valid in auto_frequency mode)
   * 
   * \return true if trigger setting is success
   */ 
  bool setTrigger(deviceport_t devport, triggermode_t trigmode, double trigfrequency);
 
  /** Set communication baudrate
   * 
   * \param devport port number of device that will be set
   * \param baudrate baud rate [bps]
   * 
   * \return true if setting success
   */ 
  bool setBaudRate(deviceport_t devport, int baudrate);
 
   /** Set param of PID motion controller
   * 
   * \param Kp propotional gain
   * \param Ki integral gain
   * \param Kd derivation gain
   * 
   * \return true if setting success
   */ 
  bool setPIDParam(double Kp, double Ki, double Kd);
 
  /** Set param of STR motion controller
   * 
   * \param Ksi Ksi prama of the pole pair
   * \param Omega Omefa prama of the pole pair
   * 
   * \return true if setting success
   */ 
  bool setSTRParam(double Ksi, double Omega);
  
  /** Add a reference point of custom waveform
   * 
   * \param timestamp timestamp of the reference point [sec]
   * \param position position of the reference point [mm]
   * 
   * \return true if setting success
   */ 
  bool addCustomWavePoint(double timestamp, double position);

  /** Get position of the slider
   * 
   * \param currentpostion (output) the current position of the slider [mm]
   * \param setposition (output) the set position to the motion controller of the slider [mm]
   * 
   * \return true if get success
   */ 
  bool getPosition(double *currentposition, double *setposition);

   /** Start motion of the slider
   * 
   * \param motioncontrol the low level motion controller (PID, STR)
   * \param timefinish auto stop time [sec], set 0 for infinity stop time
   * 
   * \return true if start success
   */ 
  bool startMotion(motioncontrol_t motionctrl, double timefinish);

   /** Stop motion of the slider immediately
   * 
   * \return true if stop success
   */ 
  bool stopMotion();

   /** Make the slider go to home postion
   * 
   * \return true if go home success
   */ 
  bool homeMotion();

  /** Reset encoder counter (reset slider position)
   * 
   * \return true if reset success
   */ 
  bool resetEncoder();

  /** Clear all reference point of custom wave 
   * 
   * \return true if clear success
   */ 
  bool clearCustomWavePoints();

  /** Send message through serial port with header and footer included
   * 
   * \param message the command to the slider
   * \return true if sending success
   */
  bool send_serial(std::string txmessage);

  /** Receive message through serial port, cut out header and footer
   * 
   * \param message (output) the received message from the slider
   * \return number of received byte
   */
  bool receive_serial(std::string *rxmessage);

  /** Check device response with nearest sent command
   * 
   * \return the command state from device
   */
  cmdstate_t checkACK();

  /** Delay the process in miliseconds
   * \param miliseconds
   */
  void delay_ms(ulong miliseconds);

}; // end class SliderDriver

}; // end class Slider_driver

#endif // SLIDERDRIVER_H