.class Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DrivingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DrivingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/DrivingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DrivingModeSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DrivingModeSettings;

    .line 302
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 303
    iput-object p3, p0, Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 304
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/DrivingModeSettings;

    #calls: Lcom/android/settings_ex/DrivingModeSettings;->updateState()V
    invoke-static {v0}, Lcom/android/settings_ex/DrivingModeSettings;->access$000(Lcom/android/settings_ex/DrivingModeSettings;)V

    .line 318
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "driving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    return-void
.end method
