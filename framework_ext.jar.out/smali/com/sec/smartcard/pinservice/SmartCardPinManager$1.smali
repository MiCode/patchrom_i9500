.class final Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 173
    invoke-static {p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 174
    const-string v0, "SmartCardPinManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Z)Z

    .line 178
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 166
    const-string v0, "SmartCardPinManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Z)Z

    .line 169
    return-void
.end method
