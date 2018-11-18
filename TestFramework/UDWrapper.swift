//
//  UDWrapper.swift
//  shotworks_for_ph2_by_swift
//
//  Created by 平塚 俊輔 on 2015/06/10.
//  Copyright (c) 2015年 平塚 俊輔. All rights reserved.
//

import Foundation

public class UDWrapper{
    public class func getObject(key: String) -> AnyObject? {
        return UserDefaults.standard.object(forKey: key) as AnyObject?
    }
    
    public class func getInt(key: String) -> Int {
        return UserDefaults.standard.integer(forKey: key)
    }
    
    public class func getBool(key: String) -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    public class func getFloat(key: String) -> Float {
        return UserDefaults.standard.float(forKey: key)
    }
    
    public class func getString(key: String) -> String? {
        return UserDefaults.standard.string(forKey: key)
    }
    
    public class func getData(key: String) -> NSData? {
        return UserDefaults.standard.data(forKey: key) as NSData?
    }
    
    public class func getArray(key: String) -> NSArray? {
        return UserDefaults.standard.array(forKey: key) as NSArray?
    }
    
    public class func getDictionary(key: String) -> NSDictionary? {
        return UserDefaults.standard.dictionary(forKey: key) as NSDictionary?
    }
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Get value with default value
    //-------------------------------------------------------------------------------------------
    
    public class func getObject(key: String, defaultValue: AnyObject) -> AnyObject? {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getObject(key: key)
    }
    
    public class func getInt(key: String, defaultValue: Int) -> Int {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getInt(key: key)
    }
    
    public class func getBool(key: String, defaultValue: Bool) -> Bool {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getBool(key: key)
    }
    
    public class func getFloat(key: String, defaultValue: Float) -> Float {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getFloat(key: key)
    }
    
    public class func getString(key: String, defaultValue: String) -> String? {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getString(key: key)
    }
    
    public class func getData(key: String, defaultValue: NSData) -> NSData? {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getData(key: key)
    }
    
    public class func getArray(key: String, defaultValue: NSArray) -> NSArray? {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getArray(key: key)
    }
    
    public class func getDictionary(key: String, defaultValue: NSDictionary) -> NSDictionary? {
        if getObject(key: key) == nil {
            return defaultValue
        }
        return getDictionary(key: key)
    }
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Set value
    //-------------------------------------------------------------------------------------------
    
    public class func setObject(key: String, value: AnyObject?) {
        if value == nil {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        UserDefaults.standard.synchronize()
    }
    
    public class func setInt(key: String, value: Int) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public class func setBool(key: String, value: Bool) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public class func setFloat(key: String, value: Float) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public class func setString(key: String, value: NSString?) {
        if (value == nil) {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        UserDefaults.standard.synchronize()
    }
    
    public class func setData(key: String, value: NSData) {
        setObject(key: key, value: value)
    }
    
    public class func setArray(key: String, value: NSArray) {
        setObject(key: key, value: value)
    }
    
    
    public class func setDictionary(key: String, value: NSDictionary) {
        setObject(key: key, value: value)
    }
    
    //-------------------------------------------------------------------------------------------
    // MARK: - Synchronize
    //-------------------------------------------------------------------------------------------
    
    public class func Sync() {
        UserDefaults.standard.synchronize()
    }
}
