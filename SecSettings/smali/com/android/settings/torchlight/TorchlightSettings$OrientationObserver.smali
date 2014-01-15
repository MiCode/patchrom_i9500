.class Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;
.super Landroid/database/ContentObserver;
.source "TorchlightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/torchlight/TorchlightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/torchlight/TorchlightSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/torchlight/TorchlightSettings;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;->this$0:Lcom/android/settings_ex/torchlight/TorchlightSettings;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 190
    const-string v0, "TorchlightSettings"

    const-string v1, "OrientationObserver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 196
    const-string v1, "TorchlightSettings"

    const-string v2, "OrientationObserver().onChange()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;->this$0:Lcom/android/settings_ex/torchlight/TorchlightSettings;

    #getter for: Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/torchlight/TorchlightSettings;->access$100(Lcom/android/settings_ex/torchlight/TorchlightSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;->this$0:Lcom/android/settings_ex/torchlight/TorchlightSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/torchlight/TorchlightSettings;->access$000(Lcom/android/settings_ex/torchlight/TorchlightSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torchlight_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 201
    return-void
.end method
