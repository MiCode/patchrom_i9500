.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1676
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1679
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1680
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 164
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    return-void
.end method

.method public run()V
    .locals 189

    .prologue
    .line 170
    const-string v7, "SystemServer"

    const-string v9, "!@Begin SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 174
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 176
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 179
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 180
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 184
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v148

    .line 186
    .local v148, shutdownAction:Ljava/lang/String;
    if-eqz v148, :cond_0

    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 187
    const/4 v7, 0x0

    move-object/from16 v0, v148

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v140, 0x1

    .line 190
    .local v140, reboot:Z
    :goto_0
    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    .line 191
    const/4 v7, 0x1

    invoke-virtual/range {v148 .. v148}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v148

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v139

    .line 196
    .local v139, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v140

    move-object/from16 v1, v139

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 200
    .end local v139           #reason:Ljava/lang/String;
    .end local v140           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 201
    .local v105, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v104, 0x0

    .line 203
    .local v104, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 205
    .local v33, headless:Z
    const/16 v112, 0x0

    .line 206
    .local v112, installer:Lcom/android/server/pm/Installer;
    const/16 v64, 0x0

    .line 207
    .local v64, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v87, 0x0

    .line 208
    .local v87, contentService:Landroid/content/ContentService;
    const/16 v115, 0x0

    .line 209
    .local v115, lights:Lcom/android/server/LightsService;
    const/16 v137, 0x0

    .line 211
    .local v137, power:Lcom/android/server/power/PowerManagerService;
    const/16 v150, 0x0

    .line 212
    .local v150, ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    const/16 v96, 0x0

    .line 213
    .local v96, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v72, 0x0

    .line 214
    .local v72, battery:Lcom/android/server/BatteryService;
    const/16 v175, 0x0

    .line 215
    .local v175, vibrator:Lcom/android/server/VibratorService;
    const/16 v66, 0x0

    .line 216
    .local v66, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v125, 0x0

    .line 217
    .local v125, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 218
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 219
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v129, 0x0

    .line 220
    .local v129, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v81, 0x0

    .line 221
    .local v81, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v138, 0x0

    .line 222
    .local v138, qcCon:Ljava/lang/Object;
    const/16 v185, 0x0

    .line 223
    .local v185, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v182, 0x0

    .line 226
    .local v182, wifi:Lcom/android/server/WifiService;
    const/16 v184, 0x0

    .line 228
    .local v184, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v147, 0x0

    .line 230
    .local v147, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v180, 0x0

    .line 232
    .local v180, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v136, 0x0

    .line 233
    .local v136, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 234
    .local v5, context:Landroid/content/Context;
    const/16 v187, 0x0

    .line 235
    .local v187, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v73, 0x0

    .line 236
    .local v73, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v97, 0x0

    .line 237
    .local v97, dock:Lcom/android/server/DockObserver;
    const/16 v143, 0x0

    .line 238
    .local v143, regulatory:Lcom/android/server/RegulatoryObserver;
    const/16 v144, 0x0

    .line 239
    .local v144, selinuxDenialMsg:Lcom/android/server/DenialObserver;
    const/16 v173, 0x0

    .line 240
    .local v173, usb:Lcom/android/server/usb/UsbService;
    const/16 v145, 0x0

    .line 241
    .local v145, serial:Lcom/android/server/SerialService;
    const/16 v168, 0x0

    .line 242
    .local v168, twilight:Lcom/android/server/TwilightService;
    const/16 v171, 0x0

    .line 243
    .local v171, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v141, 0x0

    .line 244
    .local v141, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v157, 0x0

    .line 245
    .local v157, throttle:Lcom/android/server/ThrottleService;
    const/16 v131, 0x0

    .line 246
    .local v131, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v93, 0x0

    .line 247
    .local v93, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v78, 0x0

    .line 248
    .local v78, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v111, 0x0

    .line 249
    .local v111, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v154, 0x0

    .line 250
    .local v154, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v127, 0x0

    .line 253
    .local v127, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    const/16 v85, 0x0

    .line 257
    .local v85, containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    const/16 v162, 0x0

    .line 258
    .local v162, timaService:Lcom/android/server/TimaService;
    const/16 v160, 0x0

    .line 263
    .local v160, timaObserver:Lcom/android/server/TimaObserver;
    const/16 v156, 0x0

    .line 267
    .local v156, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v91, 0x0

    .line 269
    .local v91, dEncService:Lcom/android/server/DirEncryptService;
    const/16 v122, 0x0

    .line 276
    .local v122, mHMS:Lcom/android/server/HarmonyEASService;
    new-instance v170, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v170

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 277
    .local v170, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v170 .. v170}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v170 .. v170}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    new-instance v188, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v188

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 297
    .local v188, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v188 .. v188}, Landroid/os/HandlerThread;->start()V

    .line 298
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v188 .. v188}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    const/16 v24, 0x0

    .line 321
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v113, Lcom/android/server/pm/Installer;

    invoke-direct/range {v113 .. v113}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_69

    .line 323
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .local v113, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/pm/Installer;->ping()Z

    .line 325
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6a

    .line 330
    .end local v137           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 340
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static/range {v104 .. v104}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 343
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6b

    .line 345
    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 347
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 350
    const/16 v149, 0x0

    .local v149, simSlotNum:I
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v149

    if-ge v0, v7, :cond_4

    .line 351
    const-string v7, "telephony.registry"

    move/from16 v0, v149

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v149

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 350
    add-int/lit8 v149, v149, 0x1

    goto :goto_3

    .line 187
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v64           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v72           #battery:Lcom/android/server/BatteryService;
    .end local v73           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v85           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v87           #contentService:Landroid/content/ContentService;
    .end local v91           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v93           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v97           #dock:Lcom/android/server/DockObserver;
    .end local v104           #factoryTest:I
    .end local v105           #factoryTestStr:Ljava/lang/String;
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v115           #lights:Lcom/android/server/LightsService;
    .end local v122           #mHMS:Lcom/android/server/HarmonyEASService;
    .end local v125           #mountService:Lcom/android/server/MountService;
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v129           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v131           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v136           #pm:Landroid/content/pm/IPackageManager;
    .end local v138           #qcCon:Ljava/lang/Object;
    .end local v141           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v143           #regulatory:Lcom/android/server/RegulatoryObserver;
    .end local v144           #selinuxDenialMsg:Lcom/android/server/DenialObserver;
    .end local v145           #serial:Lcom/android/server/SerialService;
    .end local v147           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v149           #simSlotNum:I
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v154           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v156           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v157           #throttle:Lcom/android/server/ThrottleService;
    .end local v160           #timaObserver:Lcom/android/server/TimaObserver;
    .end local v162           #timaService:Lcom/android/server/TimaService;
    .end local v168           #twilight:Lcom/android/server/TwilightService;
    .end local v170           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v171           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v173           #usb:Lcom/android/server/usb/UsbService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .end local v180           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v182           #wifi:Lcom/android/server/WifiService;
    .end local v184           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v185           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v187           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v188           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_1
    const/16 v140, 0x0

    goto/16 :goto_0

    .line 193
    .restart local v140       #reboot:Z
    :cond_2
    const/16 v139, 0x0

    .restart local v139       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 201
    .end local v139           #reason:Ljava/lang/String;
    .end local v140           #reboot:Z
    .restart local v105       #factoryTestStr:Ljava/lang/String;
    :cond_3
    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v104

    goto/16 :goto_2

    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v64       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v73       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v78       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v81       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v85       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v87       #contentService:Landroid/content/ContentService;
    .restart local v91       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v93       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v97       #dock:Lcom/android/server/DockObserver;
    .restart local v104       #factoryTest:I
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v122       #mHMS:Lcom/android/server/HarmonyEASService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v129       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v131       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v136       #pm:Landroid/content/pm/IPackageManager;
    .restart local v138       #qcCon:Ljava/lang/Object;
    .restart local v141       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v143       #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v144       #selinuxDenialMsg:Lcom/android/server/DenialObserver;
    .restart local v145       #serial:Lcom/android/server/SerialService;
    .restart local v147       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v149       #simSlotNum:I
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v154       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #throttle:Lcom/android/server/ThrottleService;
    .restart local v160       #timaObserver:Lcom/android/server/TimaObserver;
    .restart local v162       #timaService:Lcom/android/server/TimaService;
    .restart local v168       #twilight:Lcom/android/server/TwilightService;
    .restart local v170       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v171       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v173       #usb:Lcom/android/server/usb/UsbService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    .restart local v180       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v182       #wifi:Lcom/android/server/WifiService;
    .restart local v184       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v185       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v187       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v188       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_4
    move-object/from16 v128, v127

    .line 376
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v149           #simSlotNum:I
    .local v128, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :goto_4
    :try_start_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 377
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v127, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6e

    .line 379
    .end local v128           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 388
    :goto_5
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 392
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_5

    .line 395
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    :cond_5
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 402
    .local v90, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 403
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 404
    const/16 v24, 0x1

    .line 412
    :cond_6
    :goto_6
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v86, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 414
    .end local v85           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .local v86, containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_7
    const-string v7, "container_service"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 415
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6f

    move-object/from16 v85, v86

    .line 422
    .end local v86           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v85       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    :goto_7
    :try_start_8
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v159

    .line 423
    .local v159, timaEnabled:Z
    if-eqz v159, :cond_7

    .line 425
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v163, Lcom/android/server/TimaService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 427
    .end local v162           #timaService:Lcom/android/server/TimaService;
    .local v163, timaService:Lcom/android/server/TimaService;
    :try_start_a
    const-string v7, "tima"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_70

    move-object/from16 v162, v163

    .line 433
    .end local v163           #timaService:Lcom/android/server/TimaService;
    .restart local v162       #timaService:Lcom/android/server/TimaService;
    :goto_8
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v161, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .end local v160           #timaObserver:Lcom/android/server/TimaObserver;
    .local v161, timaObserver:Lcom/android/server/TimaObserver;
    move-object/from16 v160, v161

    .line 442
    .end local v161           #timaObserver:Lcom/android/server/TimaObserver;
    .restart local v160       #timaObserver:Lcom/android/server/TimaObserver;
    :cond_7
    :goto_9
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "!@Begin PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz v104, :cond_21

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, v113

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v136

    .line 446
    const-string v7, "SystemServer"

    const-string v9, "!@End PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 448
    const/16 v107, 0x0

    .line 450
    .local v107, firstBoot:Z
    :try_start_d
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    move-result v107

    .line 454
    :goto_b
    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 456
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 461
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 465
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v65, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 467
    .end local v64           #accountManager:Landroid/accounts/AccountManagerService;
    .local v65, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_10
    const-string v7, "account"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_79
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_71

    move-object/from16 v64, v65

    .line 473
    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_c
    :try_start_11
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    move-result v7

    if-eqz v7, :cond_8

    .line 475
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 483
    :cond_8
    :goto_d
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_22

    const/4 v7, 0x1

    :goto_e
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v87

    .line 489
    new-instance v92, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 491
    .end local v91           #dEncService:Lcom/android/server/DirEncryptService;
    .local v92, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_14
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_9

    .line 492
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_72

    :cond_9
    move-object/from16 v91, v92

    .line 500
    .end local v92           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v91       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_f
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .end local v115           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_73

    .line 508
    .end local v72           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_17
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v176, Lcom/android/server/VibratorService;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_74

    .line 512
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .local v176, vibrator:Lcom/android/server/VibratorService;
    :try_start_18
    const-string v7, "vibrator"

    move-object/from16 v0, v176

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 515
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v151, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-direct {v0, v5, v4, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_75

    .line 517
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .local v151, ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    :try_start_19
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 521
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 524
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_76

    .line 526
    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_1a
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 528
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 532
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_77

    .line 535
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_1b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 536
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 539
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 543
    :cond_a
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_23

    const/16 v22, 0x1

    :goto_10
    if-nez v107, :cond_24

    const/16 v23, 0x1

    :goto_11
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v187

    .line 548
    const-string v7, "window"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 549
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 551
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v187

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 553
    invoke-static {v5}, Lcom/android/server/power/FakeShutdown;->restoreAirplaneMode(Landroid/content/Context;)V

    .line 556
    new-instance v7, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 560
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 562
    move-object/from16 v0, v187

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 563
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 568
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 569
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_12
    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v150, v151

    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    move-object/from16 v112, v113

    .line 586
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v159           #timaEnabled:Z
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    :goto_13
    const/16 v94, 0x0

    .line 588
    .local v94, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v102, 0x0

    .line 590
    .local v102, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v152, 0x0

    .line 591
    .local v152, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v109, 0x0

    .line 592
    .local v109, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v67, 0x0

    .line 593
    .local v67, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v133, 0x0

    .line 594
    .local v133, notification:Lcom/android/server/NotificationManagerService;
    const/16 v178, 0x0

    .line 595
    .local v178, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v116, 0x0

    .line 596
    .local v116, location:Lcom/android/server/LocationManagerService;
    const/16 v120, 0x0

    .line 597
    .local v120, lpp:Landroid/os/IBinder;
    const/16 v88, 0x0

    .line 598
    .local v88, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v164, 0x0

    .line 599
    .local v164, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v118, 0x0

    .line 600
    .local v118, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v99, 0x0

    .line 603
    .local v99, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_b

    .line 605
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v110, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v187

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_8

    .line 607
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .local v110, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_1d
    const-string v7, "input_method"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_68

    move-object/from16 v109, v110

    .line 613
    .end local v110           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_9

    .line 622
    :cond_b
    :goto_15
    :try_start_1f
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_a

    .line 628
    :goto_16
    :try_start_20
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_b

    .line 634
    :goto_17
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10405c6

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_67

    .line 643
    :goto_18
    if-eqz v85, :cond_c

    :try_start_22
    invoke-virtual/range {v85 .. v85}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_c

    .line 648
    :cond_c
    :goto_19
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_2a

    .line 649
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 655
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v126, Lcom/android/server/MountService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_d

    .line 657
    .end local v125           #mountService:Lcom/android/server/MountService;
    .local v126, mountService:Lcom/android/server/MountService;
    :try_start_24
    const-string v7, "mount"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_66

    move-object/from16 v125, v126

    .line 665
    .end local v126           #mountService:Lcom/android/server/MountService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    :cond_d
    :goto_1a
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz v91, :cond_e

    .line 667
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_e

    .line 676
    :cond_e
    :goto_1b
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v119, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v119

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_f

    .line 678
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v119, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_27
    const-string v7, "lock_settings"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_65

    move-object/from16 v118, v119

    .line 684
    .end local v119           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_1c
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v95, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_10

    .line 686
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v95, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_29
    const-string v7, "device_policy"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_64

    move-object/from16 v94, v95

    .line 693
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_1d
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v103, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v136

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v103

    invoke-direct {v0, v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_11

    .line 695
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v103, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_2b
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 696
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_63

    move-object/from16 v102, v103

    .line 704
    .end local v103           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v102       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_1e
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v123, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_12

    .line 706
    .end local v122           #mHMS:Lcom/android/server/HarmonyEASService;
    .local v123, mHMS:Lcom/android/server/HarmonyEASService;
    :try_start_2d
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 707
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_62

    move-object/from16 v122, v123

    .line 714
    .end local v123           #mHMS:Lcom/android/server/HarmonyEASService;
    .restart local v122       #mHMS:Lcom/android/server/HarmonyEASService;
    :goto_1f
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v153, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v187

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_13

    .line 716
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v153, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_2f
    const-string v7, "statusbar"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_61

    move-object/from16 v152, v153

    .line 722
    .end local v153           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v152       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_20
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_14

    .line 733
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_15

    .line 741
    :goto_22
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 743
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_16

    .line 749
    :goto_23
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v165, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_17

    .line 751
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v165, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_34
    const-string v7, "textservices"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_60

    move-object/from16 v164, v165

    .line 757
    .end local v165           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_24
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v130, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v130

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_18

    .line 759
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v130, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_36
    const-string v7, "netstats"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_5f

    move-object/from16 v29, v130

    .line 765
    .end local v130           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_19

    .line 769
    .end local v129           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_38
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_5e

    .line 783
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v186, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1a

    .line 785
    .end local v185           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v186, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_3a
    const-string v7, "wifip2p"

    move-object/from16 v0, v186

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_5d

    move-object/from16 v185, v186

    .line 791
    .end local v186           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v185       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v183, Lcom/android/server/WifiService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1b

    .line 793
    .end local v182           #wifi:Lcom/android/server/WifiService;
    .local v183, wifi:Lcom/android/server/WifiService;
    :try_start_3c
    const-string v7, "wifi"

    move-object/from16 v0, v183

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_5c

    move-object/from16 v182, v183

    .line 817
    .end local v183           #wifi:Lcom/android/server/WifiService;
    .restart local v182       #wifi:Lcom/android/server/WifiService;
    :goto_28
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v181, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1c

    .line 819
    .end local v180           #wfd:Lcom/samsung/wfd/WfdService;
    .local v181, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_3e
    const-string v7, "wfd"

    move-object/from16 v0, v181

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_5b

    move-object/from16 v180, v181

    .line 825
    .end local v181           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v180       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_29
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v82, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v82

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1d

    .line 834
    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .local v82, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_40
    const-string v7, "connectivity"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 835
    move-object/from16 v0, v29

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 836
    move-object/from16 v0, v25

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 837
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 838
    invoke-virtual/range {v185 .. v185}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_5a

    move-object/from16 v81, v82

    .line 879
    .end local v82           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v81       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_2a
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v147

    .line 881
    const-string v7, "servicediscovery"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_1e

    .line 888
    :goto_2b
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v158, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_1f

    .line 890
    .end local v157           #throttle:Lcom/android/server/ThrottleService;
    .local v158, throttle:Lcom/android/server/ThrottleService;
    :try_start_43
    const-string v7, "throttle"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_59

    move-object/from16 v157, v158

    .line 897
    .end local v158           #throttle:Lcom/android/server/ThrottleService;
    .restart local v157       #throttle:Lcom/android/server/ThrottleService;
    :goto_2c
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_20

    .line 904
    :goto_2d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 906
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "ToolkitManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v7, "toolkitmanager"

    new-instance v9, Lcom/android/server/toolkit/ToolkitManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/toolkit/ToolkitManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_21

    .line 919
    :cond_f
    :goto_2e
    if-eqz v125, :cond_10

    .line 921
    const-string v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 922
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 926
    :cond_10
    if-eqz v64, :cond_11

    .line 927
    :try_start_46
    invoke-virtual/range {v64 .. v64}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_22

    .line 933
    :cond_11
    :goto_2f
    if-eqz v87, :cond_12

    .line 934
    :try_start_47
    invoke-virtual/range {v87 .. v87}, Landroid/content/ContentService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_23

    .line 940
    :cond_12
    :goto_30
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v134, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v134

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_24

    .line 942
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .local v134, notification:Lcom/android/server/NotificationManagerService;
    :try_start_49
    const-string v7, "notification"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 943
    move-object/from16 v0, v25

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_58

    move-object/from16 v133, v134

    .line 949
    .end local v134           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v133       #notification:Lcom/android/server/NotificationManagerService;
    :goto_31
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_25

    .line 957
    :goto_32
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v117, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_26

    .line 959
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .local v117, location:Lcom/android/server/LocationManagerService;
    :try_start_4c
    const-string v7, "location"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_57

    move-object/from16 v116, v117

    .line 965
    .end local v117           #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    :goto_33
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "LPP Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v7, "com.samsung.lpp.LPPLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v121

    .line 967
    .local v121, lppLoader:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "getLPPManagerService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v11

    move-object/from16 v0, v121

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v108

    .line 968
    .local v108, getLppManagerService:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v108

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v120, v0

    .line 969
    const-string v7, "lpp"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 970
    const-string v7, "SystemServer"

    const-string v9, "Loading LPPManagerService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_27

    .line 976
    .end local v108           #getLppManagerService:Ljava/lang/reflect/Method;
    .end local v121           #lppLoader:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_34
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v89, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_28

    .line 978
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v89, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_4f
    const-string v7, "country_detector"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_56

    move-object/from16 v88, v89

    .line 984
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v88       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_35
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_29

    .line 992
    :goto_36
    :try_start_51
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v136

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 993
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2a

    .line 1004
    :goto_37
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2b

    .line 1011
    :goto_38
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1014
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    if-nez v33, :cond_13

    .line 1016
    new-instance v179, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2c

    .line 1017
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v179, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_54
    const-string v7, "wallpaper"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_55

    move-object/from16 v178, v179

    .line 1024
    .end local v179           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v178       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_13
    :goto_39
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1026
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_2d

    .line 1034
    :cond_14
    :goto_3a
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v98, Lcom/android/server/DockObserver;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2e

    .end local v97           #dock:Lcom/android/server/DockObserver;
    .local v98, dock:Lcom/android/server/DockObserver;
    move-object/from16 v97, v98

    .line 1042
    .end local v98           #dock:Lcom/android/server/DockObserver;
    .restart local v97       #dock:Lcom/android/server/DockObserver;
    :goto_3b
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_2f

    .line 1051
    :goto_3c
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v174, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_30

    .line 1054
    .end local v173           #usb:Lcom/android/server/usb/UsbService;
    .local v174, usb:Lcom/android/server/usb/UsbService;
    :try_start_59
    const-string v7, "usb"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_54

    move-object/from16 v173, v174

    .line 1060
    .end local v174           #usb:Lcom/android/server/usb/UsbService;
    .restart local v173       #usb:Lcom/android/server/usb/UsbService;
    :goto_3d
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v146, Lcom/android/server/SerialService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_31

    .line 1063
    .end local v145           #serial:Lcom/android/server/SerialService;
    .local v146, serial:Lcom/android/server/SerialService;
    :try_start_5b
    const-string v7, "serial"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_53

    move-object/from16 v145, v146

    .line 1069
    .end local v146           #serial:Lcom/android/server/SerialService;
    .restart local v145       #serial:Lcom/android/server/SerialService;
    :goto_3e
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v169, Lcom/android/server/TwilightService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_32

    .end local v168           #twilight:Lcom/android/server/TwilightService;
    .local v169, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v168, v169

    .line 1076
    .end local v169           #twilight:Lcom/android/server/TwilightService;
    .restart local v168       #twilight:Lcom/android/server/TwilightService;
    :goto_3f
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v172, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v172

    move-object/from16 v1, v168

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_33

    .end local v171           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v172, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v171, v172

    .line 1084
    .end local v172           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v171       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_40
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1087
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_34

    .line 1096
    :cond_15
    :goto_41
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_35

    .line 1104
    :goto_42
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v68, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_36

    .line 1106
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .local v68, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_61
    const-string v7, "appwidget"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_52

    move-object/from16 v67, v68

    .line 1112
    .end local v68           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_43
    :try_start_62
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v142, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_37

    .end local v141           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v142, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v141, v142

    .line 1119
    .end local v142           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v141       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_44
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_38

    .line 1126
    :goto_45
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v70, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v70, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_39

    .line 1138
    .end local v70           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_46
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3a

    .line 1146
    :goto_47
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v132, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3b

    .end local v131           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v132, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v131, v132

    .line 1169
    .end local v132           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v131       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_48
    const-string v7, "ro.tvout.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v166

    .line 1171
    .local v166, tvoutEnable:Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v166

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v7, "false"

    move-object/from16 v0, v166

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 1179
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/16 v167, 0x0

    .line 1183
    .local v167, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.TvoutService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v167

    .line 1185
    if-nez v167, :cond_28

    .line 1187
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3c

    .line 1213
    .end local v167           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_16
    :goto_49
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v135

    .line 1215
    .local v135, packageMgr:Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.irda_service"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1217
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    new-instance v114, Landroid/app/IrdaService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 1219
    .local v114, irda:Landroid/app/IrdaService;
    const-string v7, "irda"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3d

    .line 1225
    .end local v114           #irda:Landroid/app/IrdaService;
    :cond_17
    :goto_4a
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1227
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    new-instance v71, Landroid/app/BarBeamService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1230
    .local v71, barbeam:Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3e

    .line 1237
    .end local v71           #barbeam:Landroid/app/BarBeamService;
    :cond_18
    :goto_4b
    :try_start_6a
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v79, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_3f

    .line 1239
    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v79, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_6b
    const-string v7, "commontime_management"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_51

    move-object/from16 v78, v79

    .line 1245
    .end local v79           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v78       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_4c
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_40

    .line 1252
    :goto_4d
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_41

    .line 1297
    :goto_4e
    :try_start_6e
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v75

    .line 1298
    .local v75, cl:Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v75

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v76

    .line 1299
    .local v76, class_SmartFaceManager:Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v76

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v106

    .line 1301
    .local v106, field_SMARTFACE_SERVICE:Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v75

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v77

    .line 1302
    .local v77, class_SmartFaceService:Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v77

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v84

    .line 1304
    .local v84, constructor_SmartFaceService:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v106

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v84

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1305
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_42

    .line 1315
    .end local v75           #cl:Ljava/lang/ClassLoader;
    .end local v76           #class_SmartFaceManager:Ljava/lang/Class;
    .end local v77           #class_SmartFaceService:Ljava/lang/Class;
    .end local v84           #constructor_SmartFaceService:Ljava/lang/reflect/Constructor;
    .end local v106           #field_SMARTFACE_SERVICE:Ljava/lang/reflect/Field;
    :goto_4f
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_43

    .line 1321
    :goto_50
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110043

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1324
    :try_start_70
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v100, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_44

    .line 1327
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v100, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_71
    const-string v7, "dreams"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_50

    move-object/from16 v99, v100

    .line 1336
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v135           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v166           #tvoutEnable:Ljava/lang/String;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_19
    :goto_51
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :try_start_72
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_45

    .line 1352
    :goto_52
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1353
    .local v47, safeMode:Z
    if-eqz v47, :cond_29

    .line 1354
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1356
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1358
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1367
    :goto_53
    :try_start_73
    invoke-virtual/range {v175 .. v175}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_46

    .line 1373
    :goto_54
    :try_start_74
    invoke-virtual/range {v118 .. v118}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_47

    .line 1378
    :goto_55
    if-eqz v94, :cond_1a

    .line 1380
    :try_start_75
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_48

    .line 1388
    :cond_1a
    :goto_56
    if-eqz v102, :cond_1b

    .line 1389
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1390
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_1b
    if-eqz v133, :cond_1c

    .line 1396
    :try_start_76
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_49

    .line 1403
    :cond_1c
    :goto_57
    :try_start_77
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_4a

    .line 1408
    :goto_58
    if-eqz v47, :cond_1d

    .line 1409
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1415
    :cond_1d
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v80

    .line 1416
    .local v80, config:Landroid/content/res/Configuration;
    new-instance v124, Landroid/util/DisplayMetrics;

    invoke-direct/range {v124 .. v124}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1417
    .local v124, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v177

    check-cast v177, Landroid/view/WindowManager;

    .line 1418
    .local v177, w:Landroid/view/WindowManager;
    invoke-interface/range {v177 .. v177}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v124

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1419
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v80

    move-object/from16 v1, v124

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1422
    :try_start_78
    move-object/from16 v0, v168

    move-object/from16 v1, v99

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_4b

    .line 1429
    :goto_59
    :try_start_79
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_4c

    .line 1435
    :goto_5a
    :try_start_7a
    invoke-interface/range {v136 .. v136}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4d

    .line 1441
    :goto_5b
    :try_start_7b
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4e

    .line 1447
    :goto_5c
    move-object/from16 v34, v5

    .line 1448
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v125

    .line 1449
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1450
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1451
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1452
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1453
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v81

    .line 1454
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v97

    .line 1455
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v173

    .line 1456
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v54, v157

    .line 1457
    .local v54, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v168

    .line 1458
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v171

    .line 1459
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v67

    .line 1460
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v178

    .line 1461
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v109

    .line 1462
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v141

    .line 1463
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v116

    .line 1464
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v120

    .line 1465
    .local v52, lppF:Landroid/os/IBinder;
    move-object/from16 v53, v88

    .line 1466
    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v131

    .line 1467
    .local v55, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v78

    .line 1468
    .local v56, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v164

    .line 1469
    .local v57, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v152

    .line 1470
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v99

    .line 1471
    .local v58, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v19

    .line 1472
    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v154

    .line 1473
    .local v61, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v127

    .line 1477
    .local v62, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v63, v156

    .line 1481
    .local v63, telephonyRegistry2F:Ljava/lang/Object;
    move-object/from16 v60, v85

    .line 1489
    .local v60, containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v63}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1664
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1665
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_1e
    const-string v7, "SystemServer"

    const-string v9, "!@End SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1671
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void

    .line 355
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #lppF:Landroid/os/IBinder;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #throttleF:Lcom/android/server/ThrottleService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v61           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v62           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v63           #telephonyRegistry2F:Ljava/lang/Object;
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v80           #config:Landroid/content/res/Configuration;
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v120           #lpp:Landroid/os/IBinder;
    .end local v124           #metrics:Landroid/util/DisplayMetrics;
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v177           #w:Landroid/view/WindowManager;
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v129       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1f
    :try_start_7c
    new-instance v155, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7c} :catch_1

    .line 356
    .end local v154           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v155, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_7d
    const-string v7, "telephony.registry"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 358
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 359
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v128, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_7d} :catch_6c

    .line 361
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v128       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_7e
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_7e} :catch_6d

    move-object/from16 v154, v155

    .end local v155           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v154       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_4

    .line 405
    .end local v128           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_20
    :try_start_7f
    const-string v7, "1"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 406
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 416
    :catch_0
    move-exception v101

    .line 417
    .local v101, e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting Container Service"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v101 .. v101}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_7f} :catch_1

    goto/16 :goto_7

    .line 581
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .line 582
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .local v101, e:Ljava/lang/RuntimeException;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    :goto_5e
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 428
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #e:Ljava/lang/RuntimeException;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v159       #timaEnabled:Z
    :catch_2
    move-exception v101

    .line 429
    .local v101, e:Ljava/lang/Throwable;
    :goto_5f
    :try_start_80
    const-string v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 436
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v101

    .line 437
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 443
    .end local v101           #e:Ljava/lang/Throwable;
    :cond_21
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 468
    .restart local v107       #firstBoot:Z
    :catch_4
    move-exception v101

    .line 469
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 477
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v101

    .line 478
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_80} :catch_1

    goto/16 :goto_d

    .line 484
    .end local v101           #e:Ljava/lang/Throwable;
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 494
    .end local v91           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v92       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_6
    move-exception v101

    .line 495
    .restart local v101       #e:Ljava/lang/Throwable;
    :try_start_81
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_81} :catch_72

    .line 496
    const/16 v91, 0x0

    .end local v92           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v91       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_f

    .line 544
    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v72           #battery:Lcom/android/server/BatteryService;
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v115           #lights:Lcom/android/server/LightsService;
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v151       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_10

    :cond_24
    const/16 v23, 0x0

    goto/16 :goto_11

    .line 570
    :cond_25
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_26

    .line 571
    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 581
    :catch_7
    move-exception v101

    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v150, v151

    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto :goto_5e

    .line 573
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v151       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :cond_26
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v74, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_82} :catch_7

    .line 575
    .end local v73           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v74, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_83
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 576
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_83} :catch_78

    move-object/from16 v73, v74

    .end local v74           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v73       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_12

    .line 608
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v159           #timaEnabled:Z
    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v88       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v102       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v120       #lpp:Landroid/os/IBinder;
    .restart local v133       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v152       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    .restart local v178       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_8
    move-exception v101

    .line 609
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 616
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v101

    .line 617
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 623
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v101

    .line 624
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 629
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v101

    .line 630
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 644
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v101

    .line 645
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 658
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v101

    .line 659
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 670
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v101

    .line 671
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 679
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v101

    .line 680
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 687
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v101

    .line 688
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 697
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v101

    .line 698
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 708
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v101

    .line 709
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 717
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v101

    .line 718
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 725
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v101

    .line 726
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 736
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v101

    .line 737
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 744
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v101

    .line 745
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 752
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v101

    .line 753
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 760
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v101

    .line 761
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 770
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v101

    move-object/from16 v25, v129

    .line 771
    .end local v129           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 786
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v101

    .line 787
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 794
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v101

    .line 795
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 820
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v101

    .line 821
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 839
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v101

    .line 840
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 883
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v101

    .line 884
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 892
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v101

    .line 893
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_6f
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 900
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v101

    .line 901
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 909
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v101

    .line 910
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "Failure starting ToolkitManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 928
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v101

    .line 929
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 935
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v101

    .line 936
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 944
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v101

    .line 945
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_70
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 952
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v101

    .line 953
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 960
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v101

    .line 961
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_71
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 971
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v101

    .line 972
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting LPP Manager : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 979
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v101

    .line 980
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_72
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 987
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v101

    .line 988
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 997
    .end local v101           #e:Ljava/lang/Throwable;
    :cond_27
    :try_start_84
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_2a

    goto/16 :goto_37

    .line 999
    :catch_2a
    move-exception v101

    .line 1000
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting Spell Service failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v101

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1007
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v101

    .line 1008
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1019
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v101

    .line 1020
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_73
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1028
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v101

    .line 1029
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1037
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v101

    .line 1038
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1046
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v101

    .line 1047
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1055
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v101

    .line 1056
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_74
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1064
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v101

    .line 1065
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_75
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 1071
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v101

    .line 1072
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1079
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v101

    .line 1080
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1089
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v101

    .line 1090
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1099
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v101

    .line 1100
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1107
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v101

    .line 1108
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_76
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1114
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v101

    .line 1115
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1121
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v101

    .line 1122
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1129
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v101

    .line 1130
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1141
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v101

    .line 1142
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1148
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v101

    .line 1149
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1195
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v166       #tvoutEnable:Ljava/lang/String;
    .restart local v167       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_28
    :try_start_85
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v69, v0

    .line 1199
    .local v69, arg:[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v69, v7

    .line 1201
    move-object/from16 v0, v167

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v83

    .line 1203
    .local v83, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_3c

    goto/16 :goto_49

    .line 1206
    .end local v69           #arg:[Ljava/lang/Class;
    .end local v83           #constructor:Ljava/lang/reflect/Constructor;
    .end local v167           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3c
    move-exception v101

    .line 1208
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 1220
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v135       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_3d
    move-exception v101

    .line 1221
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 1231
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v101

    .line 1232
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 1240
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v101

    .line 1241
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_77
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1247
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v101

    .line 1248
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4d

    .line 1254
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v101

    .line 1255
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 1306
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v101

    .line 1307
    .local v101, e:Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1317
    .end local v101           #e:Ljava/lang/Exception;
    :catch_43
    move-exception v101

    .line 1318
    .local v101, e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1328
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_44
    move-exception v101

    .line 1329
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_78
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1342
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v135           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v166           #tvoutEnable:Ljava/lang/String;
    :catch_45
    move-exception v101

    .line 1343
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    .line 1361
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_29
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_53

    .line 1368
    :catch_46
    move-exception v101

    .line 1369
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1374
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_47
    move-exception v101

    .line 1375
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1381
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_48
    move-exception v101

    .line 1382
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 1397
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_49
    move-exception v101

    .line 1398
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1404
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_4a
    move-exception v101

    .line 1405
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1423
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v80       #config:Landroid/content/res/Configuration;
    .restart local v124       #metrics:Landroid/util/DisplayMetrics;
    .restart local v177       #w:Landroid/view/WindowManager;
    :catch_4b
    move-exception v101

    .line 1424
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 1430
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_4c
    move-exception v101

    .line 1431
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 1436
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_4d
    move-exception v101

    .line 1437
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 1442
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_4e
    move-exception v101

    .line 1443
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 451
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v80           #config:Landroid/content/res/Configuration;
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v120           #lpp:Landroid/os/IBinder;
    .end local v124           #metrics:Landroid/util/DisplayMetrics;
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v177           #w:Landroid/view/WindowManager;
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v107       #firstBoot:Z
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v129       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v159       #timaEnabled:Z
    :catch_4f
    move-exception v7

    goto/16 :goto_b

    .line 1328
    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v72           #battery:Lcom/android/server/BatteryService;
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v115           #lights:Lcom/android/server/LightsService;
    .end local v129           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v159           #timaEnabled:Z
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v88       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v102       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v120       #lpp:Landroid/os/IBinder;
    .restart local v133       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v135       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v152       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v166       #tvoutEnable:Ljava/lang/String;
    .restart local v178       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_50
    move-exception v101

    move-object/from16 v99, v100

    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_78

    .line 1240
    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v79       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_51
    move-exception v101

    move-object/from16 v78, v79

    .end local v79           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v78       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_77

    .line 1107
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v135           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v166           #tvoutEnable:Ljava/lang/String;
    .restart local v68       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_52
    move-exception v101

    move-object/from16 v67, v68

    .end local v68           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_76

    .line 1064
    .end local v145           #serial:Lcom/android/server/SerialService;
    .restart local v146       #serial:Lcom/android/server/SerialService;
    :catch_53
    move-exception v101

    move-object/from16 v145, v146

    .end local v146           #serial:Lcom/android/server/SerialService;
    .restart local v145       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_75

    .line 1055
    .end local v173           #usb:Lcom/android/server/usb/UsbService;
    .restart local v174       #usb:Lcom/android/server/usb/UsbService;
    :catch_54
    move-exception v101

    move-object/from16 v173, v174

    .end local v174           #usb:Lcom/android/server/usb/UsbService;
    .restart local v173       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_74

    .line 1019
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v179       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_55
    move-exception v101

    move-object/from16 v178, v179

    .end local v179           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v178       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_73

    .line 979
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_56
    move-exception v101

    move-object/from16 v88, v89

    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v88       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_72

    .line 960
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .restart local v117       #location:Lcom/android/server/LocationManagerService;
    :catch_57
    move-exception v101

    move-object/from16 v116, v117

    .end local v117           #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_71

    .line 944
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v134       #notification:Lcom/android/server/NotificationManagerService;
    :catch_58
    move-exception v101

    move-object/from16 v133, v134

    .end local v134           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v133       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_70

    .line 892
    .end local v157           #throttle:Lcom/android/server/ThrottleService;
    .restart local v158       #throttle:Lcom/android/server/ThrottleService;
    :catch_59
    move-exception v101

    move-object/from16 v157, v158

    .end local v158           #throttle:Lcom/android/server/ThrottleService;
    .restart local v157       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_6f

    .line 839
    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v82       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_5a
    move-exception v101

    move-object/from16 v81, v82

    .end local v82           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v81       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_6e

    .line 820
    .end local v180           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v181       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_5b
    move-exception v101

    move-object/from16 v180, v181

    .end local v181           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v180       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_6d

    .line 794
    .end local v182           #wifi:Lcom/android/server/WifiService;
    .restart local v183       #wifi:Lcom/android/server/WifiService;
    :catch_5c
    move-exception v101

    move-object/from16 v182, v183

    .end local v183           #wifi:Lcom/android/server/WifiService;
    .restart local v182       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_6c

    .line 786
    .end local v185           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v186       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_5d
    move-exception v101

    move-object/from16 v185, v186

    .end local v186           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v185       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_6b

    .line 770
    :catch_5e
    move-exception v101

    goto/16 :goto_6a

    .line 760
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v129       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v130       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_5f
    move-exception v101

    move-object/from16 v29, v130

    .end local v130           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_69

    .line 752
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v165       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_60
    move-exception v101

    move-object/from16 v164, v165

    .end local v165           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_68

    .line 717
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v153       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_61
    move-exception v101

    move-object/from16 v152, v153

    .end local v153           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v152       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_67

    .line 708
    .end local v122           #mHMS:Lcom/android/server/HarmonyEASService;
    .restart local v123       #mHMS:Lcom/android/server/HarmonyEASService;
    :catch_62
    move-exception v101

    move-object/from16 v122, v123

    .end local v123           #mHMS:Lcom/android/server/HarmonyEASService;
    .restart local v122       #mHMS:Lcom/android/server/HarmonyEASService;
    goto/16 :goto_66

    .line 697
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v103       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_63
    move-exception v101

    move-object/from16 v102, v103

    .end local v103           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v102       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_65

    .line 687
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_64
    move-exception v101

    move-object/from16 v94, v95

    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_64

    .line 679
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v119       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_65
    move-exception v101

    move-object/from16 v118, v119

    .end local v119           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_63

    .line 658
    .end local v125           #mountService:Lcom/android/server/MountService;
    .restart local v126       #mountService:Lcom/android/server/MountService;
    :catch_66
    move-exception v101

    move-object/from16 v125, v126

    .end local v126           #mountService:Lcom/android/server/MountService;
    .restart local v125       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_62

    .line 638
    :catch_67
    move-exception v7

    goto/16 :goto_18

    .line 608
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v110       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_68
    move-exception v101

    move-object/from16 v109, v110

    .end local v110           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_61

    .line 581
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v120           #lpp:Landroid/os/IBinder;
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v137       #power:Lcom/android/server/power/PowerManagerService;
    :catch_69
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v137

    .end local v137           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_5e

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v137       #power:Lcom/android/server/power/PowerManagerService;
    :catch_6a
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v137

    .end local v137           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    :catch_6b
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v154           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v155       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_6c
    move-exception v101

    move-object/from16 v154, v155

    .end local v155           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v154       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v154           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v128       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v155       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_6d
    move-exception v101

    move-object/from16 v127, v128

    .end local v128           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v154, v155

    .end local v155           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v154       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v128       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :catch_6e
    move-exception v101

    move-object/from16 v127, v128

    .end local v128           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v85           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v86       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    :catch_6f
    move-exception v101

    move-object/from16 v85, v86

    .end local v86           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v85       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v162           #timaService:Lcom/android/server/TimaService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v159       #timaEnabled:Z
    .restart local v163       #timaService:Lcom/android/server/TimaService;
    :catch_70
    move-exception v101

    move-object/from16 v162, v163

    .end local v163           #timaService:Lcom/android/server/TimaService;
    .restart local v162       #timaService:Lcom/android/server/TimaService;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v64           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v107       #firstBoot:Z
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    :catch_71
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v64, v65

    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    :catch_72
    move-exception v101

    move-object/from16 v91, v92

    .end local v92           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v91       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v115

    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    :catch_73
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    :catch_74
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :catch_75
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v151       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :catch_76
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v66

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v150, v151

    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v151       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :catch_77
    move-exception v101

    move-object/from16 v19, v111

    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v150, v151

    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .end local v73           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v150           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .end local v175           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v151       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v176       #vibrator:Lcom/android/server/VibratorService;
    :catch_78
    move-exception v101

    move-object/from16 v73, v74

    .end local v74           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v73       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v175, v176

    .end local v176           #vibrator:Lcom/android/server/VibratorService;
    .restart local v175       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v150, v151

    .end local v151           #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .restart local v150       #ssrmService:Lcom/android/server/ssrm/CustomFrequencyManagerService;
    move-object/from16 v112, v113

    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_5e

    .line 468
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v64           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    :catch_79
    move-exception v101

    move-object/from16 v64, v65

    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_60

    .line 428
    .end local v107           #firstBoot:Z
    .end local v162           #timaService:Lcom/android/server/TimaService;
    .restart local v163       #timaService:Lcom/android/server/TimaService;
    :catch_7a
    move-exception v101

    move-object/from16 v162, v163

    .end local v163           #timaService:Lcom/android/server/TimaService;
    .restart local v162       #timaService:Lcom/android/server/TimaService;
    goto/16 :goto_5f

    .line 416
    .end local v85           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v159           #timaEnabled:Z
    .restart local v86       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    :catch_7b
    move-exception v101

    move-object/from16 v85, v86

    .end local v86           #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v85       #containerService:Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_5d

    .end local v66           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v72           #battery:Lcom/android/server/BatteryService;
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v111           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #installer:Lcom/android/server/pm/Installer;
    .end local v115           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v67       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v88       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v102       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v116       #location:Lcom/android/server/LocationManagerService;
    .restart local v118       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v120       #lpp:Landroid/os/IBinder;
    .restart local v133       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v152       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v178       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_2a
    move-object/from16 v25, v129

    .end local v129           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_51

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v67           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v88           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v102           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v116           #location:Lcom/android/server/LocationManagerService;
    .end local v118           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v120           #lpp:Landroid/os/IBinder;
    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v133           #notification:Lcom/android/server/NotificationManagerService;
    .end local v152           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v178           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v66       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #installer:Lcom/android/server/pm/Installer;
    .restart local v115       #lights:Lcom/android/server/LightsService;
    .restart local v128       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v129       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_2b
    move-object/from16 v127, v128

    .end local v128           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v127       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    goto/16 :goto_5

    .end local v154           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_2c
    move-object/from16 v128, v127

    .end local v127           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v128       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v154, v155

    .end local v155           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v154       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_4
.end method
