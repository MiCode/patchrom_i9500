.class Lcom/android/settings_ex/deviceinfo/Status$7;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Status$7;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1291
    const-string v0, "Status"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status$7;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/settings_ex/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->access$1402(Lcom/android/settings_ex/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1293
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status$7;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #calls: Lcom/android/settings_ex/deviceinfo/Status;->getOemData()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Status;->access$1500(Lcom/android/settings_ex/deviceinfo/Status;)V

    .line 1294
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1297
    const-string v0, "Status"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status$7;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->access$1402(Lcom/android/settings_ex/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1299
    return-void
.end method
