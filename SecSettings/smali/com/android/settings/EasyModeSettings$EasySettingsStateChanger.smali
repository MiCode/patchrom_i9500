.class Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;
.super Landroid/os/AsyncTask;
.source "EasyModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EasyModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EasySettingsStateChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/EasyModeSettings;Ljava/lang/String;I)V
    .locals 1
    .parameter "activity"
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 331
    #getter for: Lcom/android/settings_ex/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings_ex/EasyModeSettings;->access$000(Lcom/android/settings_ex/EasyModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mPm:Landroid/content/pm/PackageManager;

    .line 332
    iput p3, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mState:I

    .line 333
    iput-object p2, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mPackageName:Ljava/lang/String;

    .line 334
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mState:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "EasyModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Couldn\'t find package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
