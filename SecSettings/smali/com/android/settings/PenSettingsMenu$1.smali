.class Lcom/android/settings_ex/PenSettingsMenu$1;
.super Landroid/os/Handler;
.source "PenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PenSettingsMenu;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings_ex/PenSettingsMenu$1;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/PenSettingsMenu$1;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

    #getter for: Lcom/android/settings_ex/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/PenSettingsMenu;->access$000(Lcom/android/settings_ex/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 330
    return-void
.end method
