.class Lcom/android/settings_ex/DisplaySettings$23;
.super Landroid/os/Handler;
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
    .line 1727
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$23;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$23;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$1300(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1730
    return-void
.end method
