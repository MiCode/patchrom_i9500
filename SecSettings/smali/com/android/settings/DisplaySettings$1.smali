.class Lcom/android/settings_ex/DisplaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, action:Ljava/lang/String;
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver.onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 262
    const-string v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, battStatus:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/BrightnessPreference;->setEnabled(Z)V

    .line 271
    .end local v1           #battStatus:I
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v1       #battStatus:I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/BrightnessPreference;->setEnabled(Z)V

    goto :goto_0

    .line 269
    .end local v1           #battStatus:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mBrightnessPreference:Lcom/android/settings_ex/BrightnessPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/BrightnessPreference;

    move-result-object v2

#    invoke-virtual {v2, v5}, Lcom/android/settings_ex/BrightnessPreference;->setEnabled(Z)V

    goto :goto_0
.end method