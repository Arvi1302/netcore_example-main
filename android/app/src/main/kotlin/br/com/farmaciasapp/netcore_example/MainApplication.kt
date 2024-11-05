package br.com.farmaciasapp.netcore_example

import android.util.Log
import com.netcore.android.Smartech
import com.netcore.smartech_base.SmartechBasePlugin
import io.flutter.app.FlutterApplication
import io.hansel.core.logger.HSLLogLevel
import io.hansel.hanselsdk.Hansel
import java.lang.ref.WeakReference

class MainApplication : FlutterApplication(){
    override fun onCreate() {
        super.onCreate()

        // Initialize Smartech Sdk
        Smartech.getInstance(WeakReference(applicationContext)).initializeSdk(this)
        // Add the below line for debugging logs
        Smartech.getInstance(WeakReference(applicationContext)).setDebugLevel(9)
        // Add the below line to track app install and update by smartech
        Smartech.getInstance(WeakReference(applicationContext)).trackAppInstallUpdateBySmartech()

        // Initialize Flutter Smartech Base Plugin
        SmartechBasePlugin.initializePlugin(this)

        HSLLogLevel.min.isEnabled = true
        HSLLogLevel.mid.isEnabled = true
        HSLLogLevel.debug.isEnabled = true
        HSLLogLevel.all.isEnabled = true
        Hansel.enableDebugLogs()

    }

    override fun onTerminate() {
        super.onTerminate()
        Log.d("onTerminate", "onTerminate")
    }
}
