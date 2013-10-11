.class public Lcom/samsung/wfd/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel;,
        Lcom/samsung/wfd/WfdManager$ActionListener;,
        Lcom/samsung/wfd/WfdManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_PICKER_DLG:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final DISABLE_WFD:I = 0x22068

.field public static final DISABLE_WFD_FAILED:I = 0x22069

.field public static final DISABLE_WFD_SUCCEEDED:I = 0x2206a

.field public static final ENABLE_WFD:I = 0x22065

.field public static final ENABLE_WFD_DIALOG:I = 0x2206f

.field public static final ENABLE_WFD_FAILED:I = 0x22066

.field public static final ENABLE_WFD_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_INTENDED_CHANGEPATH:Ljava/lang/String; = "intendedChangePath"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_SAMPLE_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final MODE_DEFAULT:I = -0x1

.field public static final MODE_HOME_SYNC_REMOTE_TOUCH:I = 0x1

.field public static final MODE_HOME_SYNC_SCREEN_MIRRORING:I = 0x2

.field public static final MODE_REMOTE_VIEWFINDER:I = 0x0

.field public static final MODE_SCREEN_MIRRORING:I = 0x3

.field public static final P2P_CONNECTION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

.field public static final P2P_CONNECTION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

.field public static final PAUSE_RTSP:I = 0x2206e

.field public static final POPUP_CAUSE_ALERT_RESTART:I = 0x22073

.field public static final POPUP_CAUSE_BLUETOOTH_OR_EARPHONE_ON:I = 0x2207c

.field public static final POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final POPUP_CAUSE_DISCONNECT:I = 0x22071

.field public static final POPUP_CAUSE_DISCONNECT_NO_BUSY:I = 0x2207e

.field public static final POPUP_CAUSE_DONGLE_UPDATE:I = 0x22078

.field public static final POPUP_CAUSE_DONGLE_UPDATE_RESULT:I = 0x22079

.field public static final POPUP_CAUSE_HDMI_BUSY:I = 0x22074

.field public static final POPUP_CAUSE_HOTSPOT_BUSY:I = 0x22075

.field public static final POPUP_CAUSE_INVALID_HDCP_KEY:I = 0x22081

.field public static final POPUP_CAUSE_ONGOING_RESCAN:I = 0x22077

.field public static final POPUP_CAUSE_P2P_BUSY:I = 0x22072

.field public static final POPUP_CAUSE_SBEAM_BUSY:I = 0x22076

.field public static final POPUP_CAUSE_SPLIT_WINDOW:I = 0x2207f

.field public static final POPUP_CAUSE_TERMINATE:I = 0x22070

.field public static final POPUP_CAUSE_WEAK_NETWORK:I = 0x2207a

.field public static final RESUME_RTSP:I = 0x2206d

.field public static final SILENT_POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x22083

.field public static final START_RTSP:I = 0x2206b

.field public static final STOP_RTSP:I = 0x2206c

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final UPDATE_RESOURCES:I = 0x22080

.field public static final WFD_PAUSE:Ljava/lang/String; = "android.intent.action.WFD_PAUSE"

.field public static final WFD_RESUME:Ljava/lang/String; = "android.intent.action.WFD_RESUME"

.field public static final WFD_SESSION_ENABLED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ENABLED"

.field public static final WFD_SESSION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

.field public static final WFD_SESSION_ESTABLISHING:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

.field public static final WFD_SESSION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TERMINATED"

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.wfd.STATE_CHANGED"

.field public static final WFD_STATE_DISABLED:I = 0x1

.field public static final WFD_STATE_ENABLED:I = 0x2

.field public static final WFD_STATE_P2P_CONNECTED:I = 0x3

.field public static final WFD_STATE_SESSION_ESTABLISHED:I = 0x5

.field public static final WFD_STATE_SESSION_STARTING:I = 0x4

.field public static final WFD_STATE_SESSION_TEARDOWNING:I = 0x0

.field public static final WFD_STATE_UNKNOWN:I = -0x1

.field public static final WFD_STOP:Ljava/lang/String; = "android.intent.action.WFD_STOP"

.field public static final WFD_TEARDOWN_FOR_AUDIO_OUT:Ljava/lang/String; = "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

.field public static final WFD_UNSUPPORTED:I = 0x1

.field public static final WIFIDISPLAY_CONTROL_FROM_BROKER:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

.field public static final WIFIDISPLAY_CONTROL_FROM_SERVICE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_INFO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

.field public static final r_1024_768:I = 0x40

.field public static final r_1152_864:I = 0x80

.field public static final r_1280_1024:I = 0x1000

.field public static final r_1280_720:I = 0x8

.field public static final r_1280_768:I = 0x100

.field public static final r_1280_800:I = 0x200

.field public static final r_1360_768:I = 0x400

.field public static final r_1366_768:I = 0x800

.field public static final r_1400_1050:I = 0x2000

.field public static final r_1440_900:I = 0x4000

.field public static final r_1600_1200:I = 0x10000

.field public static final r_1600_900:I = 0x8000

.field public static final r_1680_1024:I = 0x20000

.field public static final r_1680_1050:I = 0x40000

.field public static final r_1920_1080:I = 0x10

.field public static final r_1920_1200:I = 0x80000

.field public static final r_640_360:I = 0x800000

.field public static final r_640_480:I = 0x1

.field public static final r_720_480:I = 0x2

.field public static final r_720_576:I = 0x4

.field public static final r_800_480:I = 0x100000

.field public static final r_800_600:I = 0x20

.field public static final r_848_480:I = 0x2000000

.field public static final r_854_480:I = 0x200000

.field public static final r_864_480:I = 0x400000

.field public static final r_960_540:I = 0x1000000

.field public static final r_unknown:I


# instance fields
.field mService:Lcom/samsung/wfd/IWfdManager;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/IWfdManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    .line 370
    return-void
.end method


# virtual methods
.method public WFDGetStatus()Z
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public WFDGetSubtitleStatus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 695
    :goto_0
    return v1

    .line 693
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->WFDGetSubtitleStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 719
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 723
    :goto_0
    return v1

    .line 721
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->WFDGetSuspendStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 3
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 714
    :goto_0
    return v1

    .line 712
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/wfd/IWfdManager;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .locals 3
    .parameter "subtitle"

    .prologue
    const/4 v1, 0x0

    .line 738
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 742
    :goto_0
    return v1

    .line 740
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 3
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 700
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 704
    :goto_0
    return v1

    .line 702
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSubtitleStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .locals 3
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 732
    :goto_0
    return v1

    .line 730
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSuspendStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public enableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 496
    .local v0, restrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_1

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    iget-object v1, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x22068

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object v1, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x22065

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public getDisplayDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 550
    :goto_0
    return-object v1

    .line 548
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDisplayDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 559
    :goto_0
    return-object v1

    .line 557
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDisplayDeviceSecure()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 564
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return v1

    .line 566
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceSecure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 802
    :goto_0
    return-object v1

    .line 800
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPreviousWifiState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 596
    :goto_0
    return v1

    .line 594
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getPreviousWifiState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 541
    :goto_0
    return-object v1

    .line 539
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getWfdSinkResolution()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 678
    :goto_0
    return v1

    .line 676
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdSinkResolution()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getWfdState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 669
    :goto_0
    return v1

    .line 667
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handleDown(I[I[I[I)V
    .locals 2
    .parameter "pointers"
    .parameter "id"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 828
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 834
    :goto_0
    return-void

    .line 830
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleDown(I[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handleMove(I[I[I[I)V
    .locals 2
    .parameter "pointers"
    .parameter "id"
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 820
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleMove(I[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handleUp(I[I[I[I)V
    .locals 2
    .parameter "pointers"
    .parameter "id"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 838
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 840
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleUp(I[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 480
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 487
    :cond_0
    :goto_0
    return-object v0

    .line 482
    :cond_1
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel;

    invoke-direct {v0, p2, p3}, Lcom/samsung/wfd/WfdManager$Channel;-><init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V

    .line 483
    .local v0, c:Lcom/samsung/wfd/WfdManager$Channel;
    iget-object v3, v0, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Lcom/samsung/wfd/WfdManager$Channel;->mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 487
    goto :goto_0
.end method

.method public isActiveUIBC()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 812
    :goto_0
    return v1

    .line 810
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isActiveUIBC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDongleRenameAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 587
    :goto_0
    return v1

    .line 585
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isDongleRenameAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isWfdEnabledPlayer()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 776
    :goto_0
    return v1

    .line 774
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isWfdEnabledPlayer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public keyDown(II)V
    .locals 2
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 854
    :goto_0
    return-void

    .line 850
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdManager;->keyDown(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public keyUp(II)V
    .locals 2
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 858
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 864
    :goto_0
    return-void

    .line 860
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdManager;->keyUp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyContentFinish()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 767
    :goto_0
    return v1

    .line 765
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->notifyContentFinish()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 2

    .prologue
    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->notifyEnterHomeSyncApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyExitHomeSyncApp()V
    .locals 2

    .prologue
    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->notifyExitHomeSyncApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pauseRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206e

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public sendToWfdStartRTSP()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 643
    :goto_0
    return v1

    .line 641
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->sendToWfdStartRTSP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 4
    .parameter "deviceName"

    .prologue
    .line 574
    const-string v1, "WfdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDeviceName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_0
    return v1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisplayDeviceAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayDeviceAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayDeviceName(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayDeviceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdEnabled(I)Z
    .locals 3
    .parameter "option"

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 614
    :goto_0
    return v1

    .line 612
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 605
    :goto_0
    return v1

    .line 603
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdEnabledPlayer(Z)Z
    .locals 3
    .parameter "onetime"

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 758
    :goto_0
    return v1

    .line 756
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledPlayer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdModeAlways()V
    .locals 2

    .prologue
    .line 781
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 783
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->setWfdModeAlways()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdRestart()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 651
    :goto_0
    return v1

    .line 649
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->setWfdRestart()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdRestartOption(I)Z
    .locals 3
    .parameter "option"

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 660
    :goto_0
    return v1

    .line 658
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdRestartOption(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdTerminate()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 623
    :goto_0
    return v1

    .line 621
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->setWfdTerminate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWfdTerminateExt(Z)Z
    .locals 3
    .parameter "intendedChangePath"

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_0

    .line 633
    :goto_0
    return v1

    .line 631
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdTerminateExt(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 517
    if-nez p1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public startWFDSession(Ljava/lang/Object;)V
    .locals 2
    .parameter "dummy"

    .prologue
    .line 748
    const-string v0, "WfdManager"

    const-string v1, "NOP startWFDSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public stopRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method
