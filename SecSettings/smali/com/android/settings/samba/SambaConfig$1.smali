.class Lcom/android/settings_ex/samba/SambaConfig$1;
.super Ljava/lang/Object;
.source "SambaConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/samba/SambaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/samba/SambaConfig;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/samba/SambaConfig;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaConfig;->getClientCurrentLog()V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaConfig;->getAccessCurrentLog()V

    .line 240
    const-string v0, "/data/samba/var/file"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "/data/samba/var/file"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileRemove(Ljava/lang/String;)Z

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    iget-object v0, v0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    const-string v1, "/data/samba/var/login_addr"

    const-string v2, "in"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/samba/SambaConfig;->getIpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    const-string v1, "/data/samba/var/logout_addr"

    const-string v2, "out"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/samba/SambaConfig;->getIpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    const-string v1, "/data/samba/var/logout_all"

    const-string v2, "out"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/samba/SambaConfig;->getIpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/android/settings_ex/samba/SambaConfig;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-static {}, Lcom/android/settings_ex/samba/SambaConfig;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaConfig$1;->this$0:Lcom/android/settings_ex/samba/SambaConfig;

    iget-object v1, v1, Lcom/android/settings_ex/samba/SambaConfig;->mediascanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_1
    return-void
.end method
