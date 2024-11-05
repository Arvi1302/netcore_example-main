package br.com.farmaciasapp.netcore_example

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.hansel.hanselsdk.Hansel

class MainActivity: FlutterActivity(){
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Hansel.pairTestDevice(intent.dataString)
    }
}
