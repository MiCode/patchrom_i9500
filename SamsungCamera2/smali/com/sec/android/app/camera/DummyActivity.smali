.class public Lcom/sec/android/app/camera/DummyActivity;
.super Landroid/app/Activity;
.source "DummyActivity.java"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    new-instance v0, Lcom/sec/android/app/camera/DummyActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/DummyActivity$1;-><init>(Lcom/sec/android/app/camera/DummyActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/DummyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/DummyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, intentFilterCover:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/camera/DummyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    return-void
.end method
