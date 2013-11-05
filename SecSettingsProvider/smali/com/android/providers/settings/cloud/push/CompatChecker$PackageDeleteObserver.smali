.class Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "CompatChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/cloud/push/CompatChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field final synthetic this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;


# direct methods
.method private constructor <init>(Lcom/android/providers/settings/cloud/push/CompatChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/settings/cloud/push/CompatChecker;Lcom/android/providers/settings/cloud/push/CompatChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;-><init>(Lcom/android/providers/settings/cloud/push/CompatChecker;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 10
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$000(Lcom/android/providers/settings/cloud/push/CompatChecker;)Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 49
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$000(Lcom/android/providers/settings/cloud/push/CompatChecker;)Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$000(Lcom/android/providers/settings/cloud/push/CompatChecker;)Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getTicker()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, ticker:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$000(Lcom/android/providers/settings/cloud/push/CompatChecker;)Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, msg:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$100(Lcom/android/providers/settings/cloud/push/CompatChecker;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 56
    .local v2, notificationManager:Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    const/high16 v5, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 58
    .local v1, notification:Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 59
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 60
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 61
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$100(Lcom/android/providers/settings/cloud/push/CompatChecker;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->this$0:Lcom/android/providers/settings/cloud/push/CompatChecker;

    #getter for: Lcom/android/providers/settings/cloud/push/CompatChecker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/providers/settings/cloud/push/CompatChecker;->access$100(Lcom/android/providers/settings/cloud/push/CompatChecker;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #ticker:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->finished:Z

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
