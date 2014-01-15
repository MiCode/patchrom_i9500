.class Lcom/android/settings_ex/users/UserSettings$8;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->addUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 403
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->access$600(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 405
    .local v0, user:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #calls: Lcom/android/settings_ex/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/users/UserSettings;->access$1400(Lcom/android/settings_ex/users/UserSettings;Landroid/content/pm/UserInfo;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->access$1300(Lcom/android/settings_ex/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/users/UserSettings;->access$1502(Lcom/android/settings_ex/users/UserSettings;Z)Z

    .line 417
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->access$400(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->access$400(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/users/UserSettings;->access$400(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$8;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #setter for: Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/users/UserSettings;->access$1502(Lcom/android/settings_ex/users/UserSettings;Z)Z

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
