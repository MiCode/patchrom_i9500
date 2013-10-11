.class Lcom/android/server/power/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->this$0:Lcom/android/server/power/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 81
    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->shutdownProperties()V

    .line 88
    const-string v13, "nfc"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v6

    .line 90
    .local v6, nfc:Landroid/nfc/INfcAdapter;
    const-string v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 92
    .local v8, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v13, "bluetooth_manager"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 95
    .local v1, bluetooth:Landroid/bluetooth/IBluetoothManager;
    const-string v13, "connectivity"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .line 98
    .local v3, connectivity:Landroid/net/IConnectivityManager;
    const/4 v9, 0x0

    .line 119
    .local v9, phone2:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x1

    .line 122
    .local v2, bluetoothOff:Z
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v13

    if-nez v13, :cond_13

    :cond_0
    const/4 v10, 0x1

    .line 123
    .local v10, radioOff:Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v13, 0x0

    invoke-interface {v3, v13}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v13

    if-nez v13, :cond_3

    .line 126
    :cond_2
    const/4 v10, 0x1

    .line 128
    :cond_3
    if-nez v10, :cond_4

    .line 129
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off radio..."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    :try_start_1
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v13

    if-nez v13, :cond_14

    :cond_5
    const/4 v11, 0x1

    .line 143
    .local v11, radioOff2:Z
    :goto_2
    if-nez v11, :cond_6

    .line 144
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off radio2..."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_15

    :cond_7
    const/4 v13, 0x1

    :goto_4
    invoke-static {v13}, Lcom/android/server/power/ShutdownThreadFeature;->access$002(Z)Z

    .line 156
    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->access$000()Z

    move-result v13

    if-nez v13, :cond_8

    .line 157
    const-string v13, "ShutdownThread"

    const-string v14, "Disabling WiFi..."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->shutdown()Z

    .line 160
    :cond_8
    const-string v13, "ShutdownThread"

    const-string v14, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v6, :cond_9

    :try_start_2
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_16

    :cond_9
    const/4 v7, 0x1

    .line 168
    .local v7, nfcOff:Z
    :goto_5
    if-nez v7, :cond_a

    .line 169
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off NFC..."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :cond_a
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_12

    .line 178
    if-nez v2, :cond_b

    .line 180
    :try_start_3
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v13

    if-nez v13, :cond_17

    const/4 v2, 0x1

    .line 185
    :goto_7
    if-eqz v2, :cond_b

    .line 186
    const-string v13, "ShutdownThread"

    const-string v14, "Bluetooth turned off."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_b
    if-nez v10, :cond_c

    .line 191
    :try_start_4
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    if-nez v13, :cond_18

    const/4 v10, 0x1

    .line 196
    :goto_8
    if-eqz v10, :cond_c

    .line 197
    const-string v13, "ShutdownThread"

    const-string v14, "Radio turned off."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_c
    if-nez v11, :cond_d

    .line 211
    :try_start_5
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v13

    if-nez v13, :cond_19

    const/4 v11, 0x1

    .line 216
    :goto_9
    if-eqz v11, :cond_d

    .line 217
    const-string v13, "ShutdownThread"

    const-string v14, "Radio2 turned off."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_d
    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->access$000()Z

    move-result v13

    if-nez v13, :cond_10

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_1a

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v13

    const/16 v14, 0xe

    if-ne v13, v14, :cond_1a

    :cond_f
    const/4 v13, 0x1

    :goto_a
    invoke-static {v13}, Lcom/android/server/power/ShutdownThreadFeature;->access$002(Z)Z

    .line 237
    :cond_10
    if-nez v7, :cond_11

    .line 239
    :try_start_6
    invoke-interface {v6}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1b

    const/4 v7, 0x1

    .line 244
    :goto_b
    if-eqz v7, :cond_11

    .line 245
    const-string v13, "ShutdownThread"

    const-string v14, "NFC turned off."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_11
    if-eqz v10, :cond_1c

    if-eqz v11, :cond_1c

    if-eqz v2, :cond_1c

    if-eqz v7, :cond_1c

    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 251
    const-string v13, "ShutdownThread"

    const-string v14, "NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$done:[Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 279
    :cond_12
    return-void

    .line 122
    .end local v7           #nfcOff:Z
    .end local v10           #radioOff:Z
    .end local v11           #radioOff2:Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v5

    .line 133
    .local v5, ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 134
    const/4 v10, 0x1

    .restart local v10       #radioOff:Z
    goto/16 :goto_1

    .line 141
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 147
    :catch_1
    move-exception v5

    .line 148
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio2 shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 149
    const/4 v11, 0x1

    .restart local v11       #radioOff2:Z
    goto/16 :goto_3

    .line 153
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 166
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 172
    :catch_2
    move-exception v5

    .line 173
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 174
    const/4 v7, 0x1

    .restart local v7       #nfcOff:Z
    goto/16 :goto_6

    .line 180
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 181
    :catch_3
    move-exception v5

    .line 182
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 183
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 191
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 192
    :catch_4
    move-exception v5

    .line 193
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 194
    const/4 v10, 0x1

    goto/16 :goto_8

    .line 211
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 212
    :catch_5
    move-exception v5

    .line 213
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio2 shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 214
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 231
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 239
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 240
    :catch_6
    move-exception v5

    .line 241
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v5}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 242
    const/4 v7, 0x1

    goto/16 :goto_b

    .line 255
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_1c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v13, "RadioOff:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", BluetoothOff:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", NFC Off:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", WiFiOff:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/server/power/ShutdownThreadFeature;->access$000()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    const-string v13, "ShutdownThread"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v13, "ShutdownThread"

    const-string v14, "!@before sleep"

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/16 v13, 0x1f4

    :try_start_7
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 274
    :goto_c
    const-string v13, "ShutdownThread"

    const-string v14, "!@after sleep"

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@[Phone off retry:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/power/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " radio="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " radio2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bluetooth="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nfc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 271
    :catch_7
    move-exception v4

    .line 272
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v13, "ShutdownThread"

    const-string v14, "InterruptedException"

    invoke-static {v13, v14, v4}, Lcom/android/server/power/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_c
.end method
