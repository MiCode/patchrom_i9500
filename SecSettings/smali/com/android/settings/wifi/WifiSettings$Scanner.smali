.class Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1

    .prologue
    .line 2936
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2937
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2936
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2946
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2947
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2948
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2959
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2000(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2000(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2960
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Skip scanActive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3004
    :cond_2
    :goto_0
    return-void

    .line 2964
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2965
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2972
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2974
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2200(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2300(Lcom/android/settings_ex/wifi/WifiSettings;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2977
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2984
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 3003
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2966
    :cond_7
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    if-lt v0, v1, :cond_4

    .line 2967
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2968
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090298

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2986
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_a

    .line 2990
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto :goto_1

    .line 2999
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto :goto_1
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2951
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2952
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2953
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2954
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2955
    :cond_0
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2940
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2941
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2943
    :cond_0
    return-void
.end method
