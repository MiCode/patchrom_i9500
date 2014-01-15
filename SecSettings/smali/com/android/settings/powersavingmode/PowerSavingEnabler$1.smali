.class Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, powersavingState:I
    const-string v2, "PowerSavingEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.POWERSAVING_CHANGED, powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-ne v1, v6, :cond_2

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    .end local v1           #powersavingState:I
    :cond_1
    :goto_0
    return-void

    .line 74
    .restart local v1       #powersavingState:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 81
    .end local v1           #powersavingState:I
    :cond_4
    const-string v2, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 83
    .restart local v1       #powersavingState:I
    const-string v2, "PowerSavingEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.POWERSAVING_SWITCH_CHANGED is received, powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-ne v1, v6, :cond_6

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 92
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 95
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;->this$0:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0
.end method
