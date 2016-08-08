## *********************************************************
## 
## File autogenerated for the bluefox2 package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 235, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 280, 'description': 'Frames per second', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'fps', 'edit_method': '', 'default': 20.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 280, 'description': 'AOI width', 'max': 2048, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'width', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'AOI height', 'max': 2048, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'height', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Defines the pixel format of the resulting image', 'max': 22, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'idpf', 'edit_method': "{'enum_description': 'Defines the pixel format of the resulting image', 'enum': [{'srcline': 22, 'description': 'The driver will decide which format to use', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'idpf_auto'}, {'srcline': 23, 'description': 'An unprocessed block of data', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'idpf_raw'}, {'srcline': 24, 'description': 'A mono channel 8 bit', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'idpf_mono8'}, {'srcline': 25, 'description': 'A mono channel 16 bit', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': 'idpf_mono16'}, {'srcline': 26, 'description': 'RGB with 24 bit per pixel', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': 'idpf_rgb888_packed'}, {'srcline': 27, 'description': 'BGR with 24 bit per pixel', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 22, 'ctype': 'int', 'type': 'int', 'name': 'idpf_bgr888_packed'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Camera binning mode', 'max': 3, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'cbm', 'edit_method': "{'enum_description': 'Defines valid binning modes for the camera', 'enum': [{'srcline': 36, 'description': 'No binning', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'cbm_off'}, {'srcline': 38, 'description': 'Horizontal binning (combines 2 adjacent columns)', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'cbm_binning_h'}, {'srcline': 40, 'description': 'Vertical binning (combines 2 adjacent rows)', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'cbm_binning_v'}, {'srcline': 42, 'description': 'Horizontal and vertical binning', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'cbm_binning_hv'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Automatic exposure control', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'aec', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Exposure time for an image in us', 'max': 100000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'expose_us', 'edit_method': '', 'default': 10000, 'level': 0, 'min': 10, 'type': 'int'}, {'srcline': 280, 'description': 'Automatic gain control', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'agc', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Gain in dB', 'max': 32.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gain_db', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 280, 'description': 'Auto control speed', 'max': 2, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'acs', 'edit_method': "{'enum_description': 'Defines valid AutoControlSpeed modes', 'enum': [{'srcline': 69, 'description': 'auto control parameters not available', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'acs_unavailable'}, {'srcline': 71, 'description': 'coverge slowly to desired value', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'acs_slow'}, {'srcline': 73, 'description': 'converge to desired value at medium speed', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'acs_medium'}, {'srcline': 75, 'description': 'converge fast to desired value', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'acs_fast'}]}", 'default': 0, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 280, 'description': 'desired average grey value', 'max': 255, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'des_grey_value', 'edit_method': '', 'default': 85, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'High dynamic range', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'hdr', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 280, 'description': 'Operation mode of the dark current filter', 'max': 3, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dcfm', 'edit_method': "{'enum_description': 'Defines valid modes for the dark current filter', 'enum': [{'srcline': 93, 'description': 'filter is switched off', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'dcfm_off'}, {'srcline': 94, 'description': 'filter is switched on', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'dcfm_on'}, {'srcline': 96, 'description': 'calculate dark current corrention image', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'dcfm_calibrate'}, {'srcline': 98, 'description': 'replace captured image with the last correction image', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'correction_image'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'Pixel clock of the camera sensor in KHz', 'max': 50000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'cpc', 'edit_method': "{'enum_description': 'Defines valid camrea pixel frequencies', 'enum': [{'srcline': 106, 'description': '12 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 12000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_12000'}, {'srcline': 107, 'description': '20 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 20000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_20000'}, {'srcline': 108, 'description': '24 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 24000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_24000'}, {'srcline': 109, 'description': '27 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 27000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_27000'}, {'srcline': 110, 'description': '32 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 32000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_32000'}, {'srcline': 111, 'description': '40 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 40000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_40000'}, {'srcline': 112, 'description': '50 Mhz', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 50000, 'ctype': 'int', 'type': 'int', 'name': 'cpc_50000'}]}", 'default': 40000, 'level': 0, 'min': 12000, 'type': 'int'}, {'srcline': 280, 'description': 'Camera trigger mode', 'max': 5, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'ctm', 'edit_method': "{'enum_description': 'Defines valid camera sensor trigger modes', 'enum': [{'srcline': 122, 'description': 'continuously exposes images', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'ctm_continuous'}, {'srcline': 124, 'description': 'start frame expose when software asks for an image', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'ctm_on_demand'}, {'srcline': 126, 'description': 'start the exposure of a frame when the trigger input is below the trigger threshold', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'ctm_on_low_level'}, {'srcline': 128, 'description': 'start the exposure of a frame when the trigger input is above the trigger threshold', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'ctm_on_high_level'}, {'srcline': 130, 'description': 'start the exposure of a frame when the trigger input level changes from high to low', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'ctm_on_falling_edge'}, {'srcline': 132, 'description': 'start the exposure of a frame when the trigger input level changes from low to high', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'ctm_on_rising_edge'}, {'srcline': 134, 'description': 'hardware sync with master and slave (stereo only, hack)', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'hard_sync'}]}", 'default': 1, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 280, 'description': 'Camera trigger source', 'max': 1, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'cts', 'edit_method': "{'enum_description': 'Defined valie camera sensor trigger source values', 'enum': [{'srcline': 144, 'description': 'trigger mode is continuous or on_demand', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'cts_unavailable'}, {'srcline': 146, 'description': 'Uses digital input 0 as the source for the trigger signal', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'cts_dig_in_0'}, {'srcline': 148, 'description': 'Use digital input 1 as the source for the trigger signal', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'cts_dig_in_1'}]}", 'default': -1, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 280, 'description': 'Prefill capture queue by request', 'max': 4, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'request', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 280, 'description': 'white balance parameter', 'max': 10, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'wbp', 'edit_method': "{'enum_description': 'An enum to set white balance paramter', 'enum': [{'srcline': 161, 'description': 'not available', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': -1, 'ctype': 'int', 'type': 'int', 'name': 'wbp_unavailable'}, {'srcline': 162, 'description': 'Tungsten', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'wbp_tungsten'}, {'srcline': 163, 'description': 'Halogen', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'wbp_halogen'}, {'srcline': 164, 'description': 'Fluorescent', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'wbp_fluorescent'}, {'srcline': 165, 'description': 'Day light', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'wbp_daylight'}, {'srcline': 166, 'description': 'Photo Light', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'wbp_photolight'}, {'srcline': 167, 'description': 'Blue Sky', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'wbp_bluesky'}, {'srcline': 168, 'description': 'User1', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': 'wbp_user1'}, {'srcline': 169, 'description': 'Calibrate', 'srcfile': '/home/odroid/ROS/src/bluefox2/cfg/Bluefox2Dyn.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': 'wbp_calibrate'}]}", 'default': 6, 'level': 0, 'min': -1, 'type': 'int'}, {'srcline': 280, 'description': 'red gain', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'r_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 280, 'description': 'green gain', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'g_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 280, 'description': 'blue gain', 'max': 10.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'b_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Bluefox2Dyn_idpf_auto = 0
Bluefox2Dyn_idpf_raw = 1
Bluefox2Dyn_idpf_mono8 = 2
Bluefox2Dyn_idpf_mono16 = 9
Bluefox2Dyn_idpf_rgb888_packed = 10
Bluefox2Dyn_idpf_bgr888_packed = 22
Bluefox2Dyn_cbm_off = 0
Bluefox2Dyn_cbm_binning_h = 1
Bluefox2Dyn_cbm_binning_v = 2
Bluefox2Dyn_cbm_binning_hv = 3
Bluefox2Dyn_acs_unavailable = -1
Bluefox2Dyn_acs_slow = 0
Bluefox2Dyn_acs_medium = 1
Bluefox2Dyn_acs_fast = 2
Bluefox2Dyn_dcfm_off = 0
Bluefox2Dyn_dcfm_on = 1
Bluefox2Dyn_dcfm_calibrate = 2
Bluefox2Dyn_correction_image = 3
Bluefox2Dyn_cpc_12000 = 12000
Bluefox2Dyn_cpc_20000 = 20000
Bluefox2Dyn_cpc_24000 = 24000
Bluefox2Dyn_cpc_27000 = 27000
Bluefox2Dyn_cpc_32000 = 32000
Bluefox2Dyn_cpc_40000 = 40000
Bluefox2Dyn_cpc_50000 = 50000
Bluefox2Dyn_ctm_continuous = 0
Bluefox2Dyn_ctm_on_demand = 1
Bluefox2Dyn_ctm_on_low_level = 2
Bluefox2Dyn_ctm_on_high_level = 3
Bluefox2Dyn_ctm_on_falling_edge = 4
Bluefox2Dyn_ctm_on_rising_edge = 5
Bluefox2Dyn_hard_sync = -1
Bluefox2Dyn_cts_unavailable = -1
Bluefox2Dyn_cts_dig_in_0 = 0
Bluefox2Dyn_cts_dig_in_1 = 1
Bluefox2Dyn_wbp_unavailable = -1
Bluefox2Dyn_wbp_tungsten = 0
Bluefox2Dyn_wbp_halogen = 1
Bluefox2Dyn_wbp_fluorescent = 2
Bluefox2Dyn_wbp_daylight = 3
Bluefox2Dyn_wbp_photolight = 4
Bluefox2Dyn_wbp_bluesky = 5
Bluefox2Dyn_wbp_user1 = 6
Bluefox2Dyn_wbp_calibrate = 10
Bluefox2Dyn_mm_off = 0
Bluefox2Dyn_mm_topdown = 1
Bluefox2Dyn_mm_leftright = 2
Bluefox2Dyn_mm_topdown_and_leftright = 3
