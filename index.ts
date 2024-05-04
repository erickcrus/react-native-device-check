
import { NativeModules } from 'react-native';

const DeviceCheck: {
    getDeviceToken: () => Promise<string>;
} = NativeModules.RNDeviceCheck;

export default DeviceCheck;
