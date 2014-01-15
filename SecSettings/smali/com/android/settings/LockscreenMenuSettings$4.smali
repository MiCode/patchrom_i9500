.class Lcom/android/settings_ex/LockscreenMenuSettings$4;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LockscreenMenuSettings;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/settings_ex/LockscreenMenuSettings$4;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1117
    const-string v0, "LockScreenMenu"

    const-string v1, "showSafetyZoneEnableDialog(), cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings$4;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    #getter for: Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/LockscreenMenuSettings;->access$000(Lcom/android/settings_ex/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1119
    return-void
.end method
