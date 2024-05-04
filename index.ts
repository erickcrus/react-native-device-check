
import { NativeModules } from 'react-native';

const DeviceCheck: {
    getDeviceToken: () => Promise<string>;
} = NativeModules.DeviceCheck;

export default DeviceCheck;
